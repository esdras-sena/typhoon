#[starknet::contract]
pub mod Typhon {
    use super::super::verifier::groth16_verifier::IGroth16VerifierBN254DispatcherTrait;
    use super::super::verifier::groth16_verifier::IGroth16VerifierBN254;
    use starknet::event::EventEmitter;
    use core::pedersen::PedersenTrait;
    use super::super::interfaces::IHasher::IHasherDispatcherTrait;
    use core::circuit::CircuitInputs;
    use starknet::storage::StoragePathEntry;
    use super::super::interfaces::IPool::IPoolDispatcherTrait;
    use super::super::interfaces::IERC20::IERC20DispatcherTrait;
    use starknet::storage::StoragePointerWriteAccess;
    use starknet::storage::StoragePointerReadAccess;
    use starknet::storage::StorageMapWriteAccess;
    use starknet::storage::StorageMapReadAccess;
    use starknet::{
        ContractAddress, get_block_timestamp, get_contract_address, get_caller_address,
        contract_address_const,
    };
    use starknet::syscalls::deploy_syscall;
    use starknet::class_hash::ClassHash;


    use typhoon::interfaces::ITyphoon::{ITyphoon};
    use typhoon::interfaces::IPool::{IPoolDispatcher};
    use typhoon::interfaces::IHasher::{IHasherDispatcher};
    use starknet::storage::Map;
    use typhoon::verifier::groth16_verifier::{IGroth16VerifierBN254Dispatcher};

    const FIELD_SIZE: u256 =
        21888242871839275222246405745257275088548364400416034343698204186575808495617;
    const ZERO_VALUE: u256 =
        21663839004416932945382355908790599225266501822907911457504978515578255421292; // = keccak256("tornado") % FIELD_SIZE
    const ROOT_HISTORY_SIZE: u32 = 30;

    const MAX_TREE_CAP: u32 = 1024;

    const ZERO_VALUES: [u256; 32] = [
        0x2fe54c60d3acabf3343a35b6eba15db4821b340f76e741e2249685ed4899af6c,
        0x256a6135777eee2fd26f54b8b7037a25439d5235caee224154186d2b8a52e31d,
        0x1151949895e82ab19924de92c40a3d6f7bcb60d92b00504b8199613683f0c200,
        0x20121ee811489ff8d61f09fb89e313f14959a0f28bb428a20dba6b0b068b3bdb,
        0x0a89ca6ffa14cc462cfedb842c30ed221a50a3d6bf022a6a57dc82ab24c157c9,
        0x24ca05c2b5cd42e890d6be94c68d0689f4f21c9cec9c0f13fe41d566dfb54959,
        0x1ccb97c932565a92c60156bdba2d08f3bf1377464e025cee765679e604a7315c,
        0x19156fbd7d1a8bf5cba8909367de1b624534ebab4f0f79e003bccdd1b182bdb4,
        0x261af8c1f0912e465744641409f622d466c3920ac6e5ff37e36604cb11dfff80,
        0x0058459724ff6ca5a1652fcbc3e82b93895cf08e975b19beab3f54c217d1c007,
        0x1f04ef20dee48d39984d8eabe768a70eafa6310ad20849d4573c3c40c2ad1e30,
        0x1bea3dec5dab51567ce7e200a30f7ba6d4276aeaa53e2686f962a46c66d511e5,
        0x0ee0f941e2da4b9e31c3ca97a40d8fa9ce68d97c084177071b3cb46cd3372f0f,
        0x1ca9503e8935884501bbaf20be14eb4c46b89772c97b96e3b2ebf3a36a948bbd,
        0x133a80e30697cd55d8f7d4b0965b7be24057ba5dc3da898ee2187232446cb108,
        0x13e6d8fc88839ed76e182c2a779af5b2c0da9dd18c90427a644f7e148a6253b6,
        0x1eb16b057a477f4bc8f572ea6bee39561098f78f15bfb3699dcbb7bd8db61854,
        0x0da2cb16a1ceaabf1c16b838f7a9e3f2a3a3088d9e0a6debaa748114620696ea,
        0x24a3b3d822420b14b5d8cb6c28a574f01e98ea9e940551d2ebd75cee12649f9d,
        0x198622acbd783d1b0d9064105b1fc8e4d8889de95c4c519b3f635809fe6afc05,
        0x29d7ed391256ccc3ea596c86e933b89ff339d25ea8ddced975ae2fe30b5296d4,
        0x19be59f2f0413ce78c0c3703a3a5451b1d7f39629fa33abd11548a76065b2967,
        0x1ff3f61797e538b70e619310d33f2a063e7eb59104e112e95738da1254dc3453,
        0x10c16ae9959cf8358980d9dd9616e48228737310a10e2b6b731c1a548f036c48,
        0x0ba433a63174a90ac20992e75e3095496812b652685b5e1a2eae0b1bf4e8fcd1,
        0x019ddb9df2bc98d987d0dfeca9d2b643deafab8f7036562e627c3667266a044c,
        0x2d3c88b23175c5a5565db928414c66d1912b11acf974b2e644caaac04739ce99,
        0x2eab55f6ae4e66e32c5189eed5c470840863445760f5ed7e7b69b2a62600f354,
        0x002df37a2642621802383cf952bf4dd1f32e05433beeb1fd41031fb7eace979d,
        0x104aeb41435db66c3e62feccc1d6f5d98d0a0ed75d1374db457cf462e3a1f427,
        0x1f3c6fd858e9a7d4b0d1f38e256a09d81d5a5e3c963987e2d4b814cfab7c6ebb,
        0x2c7a07d20dff79d01fecedc1134284a8d08436606c93693b67e333f671bf69cc,
    ];


    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        Deposit: Deposit,
        Withdraw: Withdraw,
    }

    #[derive(Drop, starknet::Event)]
    struct Deposit {
        #[key]
        commitments: Array<u256>,
        insertedIndexs: Array<u256>,
        subtreeHelper: Array<Array<u256>>,
        timestamps: u256,
    }

    #[derive(Drop, starknet::Event)]
    struct Withdraw {
        #[key]
        recipient: ContractAddress,
        nullifierHash: u256,
    }


    #[storage]
    struct Storage {
        commitments: Map<u256, bool>,
        nullifier_hashes: Map<u256, bool>,
        allowed_pools: Map<ContractAddress, bool>,
        pools: Map<ContractAddress, Map<u256, ContractAddress>>,
        owner: ContractAddress,
        hasher: ContractAddress,
        levels: u32,
        filled_subtrees: Map<u256, u256>,
        roots: Map<u256, u256>,
        current_root_index: u32,
        next_index: u32,
        verifier: ContractAddress,
        pool_salt: felt252,
        pool_class_hash: ClassHash,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        owner: ContractAddress,
        _hasher: ContractAddress,
        _verifier: ContractAddress,
        _poolClassHash: felt252,
    ) {
        self.owner.write(owner);
        self.levels.write(10);
        self.hasher.write(_hasher);
        self.verifier.write(_verifier);
        for i in 0..self.levels.read() {
            self.filled_subtrees.entry(i.into()).write(self.zeros(i))
        };
        self.roots.entry(0).write(self.zeros(self.levels.read() - 1));
        self.pool_salt.write(0);
        self.pool_class_hash.write(_poolClassHash.try_into().unwrap())
    }

    #[abi(embed_v0)]
    impl Typhoon of ITyphoon<ContractState> {
        fn deposit(
            ref self: ContractState,
            _commitment: Array<u256>,
            _pool: Array<ContractAddress>,
            _reward: bool,
        ) {
            assert!(
                _commitment.len() == _pool.len(),
                "commitments and pools needs to have the same length",
            );
            let mut insertedIndexs: Array<u256> = ArrayTrait::new();
            let mut subtreeHelper: Array<Array<u256>> = ArrayTrait::new();

            for i in 0.._commitment.len() {
                assert!(
                    self.commitments.read(*_commitment.at(i)) == false,
                    "The commitment has been submitted",
                );
                assert!(self.allowed_pools.read(*_pool.at(i)) == true, "Is not an allowed pool");
                IPoolDispatcher { contract_address: *_pool.at(i) }.updateDay();
                let (index, subtree_helper) = insert(
                    ref self, *_commitment.at(i), *_pool.at(i), _reward,
                );
                insertedIndexs.append(index);
                subtreeHelper.append(subtree_helper);
                self.commitments.write(*_commitment.at(i), true);
                IPoolDispatcher { contract_address: *_pool.at(i) }
                    .processDeposit(get_caller_address(), _reward);
            };

            self
                .emit(
                    Deposit {
                        commitments: _commitment,
                        insertedIndexs: insertedIndexs,
                        subtreeHelper: subtreeHelper,
                        timestamps: get_block_timestamp().into(),
                    },
                );
        }
        fn withdraw(ref self: ContractState, full_proof_with_hints: Span<felt252>) {
            let result = IGroth16VerifierBN254Dispatcher { contract_address: self.verifier.read() }
                .verify_groth16_proof_bn254(full_proof_with_hints);
            match result {
                Option::Some(value) => {
                    assert!(
                        !self.nullifier_hashes.read(*value[1]), "The note has been already spent",
                    );
                    assert!(self.isKnownRoot(*value[0]), "Cannot find your merkle root");
                    self.nullifier_hashes.write(*value[1], true);
                    let up = *value[4];
                    let fp: felt252 = up.try_into().unwrap();
                    let pool: ContractAddress = fp.try_into().unwrap();
                    let ur = *value[3];
                    let fr: felt252 = ur.try_into().unwrap();
                    let recipient: ContractAddress = fr.try_into().unwrap();
                    let ra = *value[5];
                    let fr: felt252 = ra.try_into().unwrap();
                    let relayer: ContractAddress = fr.try_into().unwrap();
                    IPoolDispatcher { contract_address: pool }
                        .processWithdraw(recipient, *value[2], relayer, *value[6]);
                    self.emit(Withdraw { recipient: recipient, nullifierHash: *value[1] });
                },
                Option::None => { panic!("Invalid withdraw proof"); },
            }
        }

        fn getPool(
            self: @ContractState, _token: ContractAddress, _denomination: u256,
        ) -> ContractAddress {
            return self.pools.entry(_token).entry(_denomination).read();
        }
        fn addPool(
            ref self: ContractState, _token: ContractAddress, _denomination: u256, _day: u256,
        ) {
            assert!(get_caller_address() == self.owner.read(), "Only owner");
            let callData: [felt252; 3] = [
                _token.try_into().unwrap(), _denomination.try_into().unwrap(),
                _day.try_into().unwrap(),
            ];
            let (pool_address, _) = deploy_syscall(
                class_hash: self.pool_class_hash.read(),
                contract_address_salt: self.pool_salt.read(),
                calldata: callData.span(),
                deploy_from_zero: false,
            )
                .unwrap();
            self.pools.entry(_token).entry(_denomination).write(pool_address);
            self.pool_salt.write(self.pool_salt.read() + 1);
            self.allowed_pools.entry(pool_address).write(true);
        }

        fn zeros(self: @ContractState, i: u32) -> u256 {
            let zeroArraySpan = ZERO_VALUES.span();
            return *zeroArraySpan[i];
        }

        fn hashLeftRight(self: @ContractState, _left: u256, _right: u256) -> u256 {
            assert!(_left < FIELD_SIZE, "_left should be inside the field");
            assert!(_right < FIELD_SIZE, "_right should be inside the field");
            let result = IHasherDispatcher { contract_address: self.hasher.read() }
                .MiMC5Sponge([_left, _right], 0);
            return result;
        }

        fn getLastRoot(self: @ContractState) -> u256 {
            return self.roots.entry(self.current_root_index.read().into()).read();
        }

        fn isKnownRoot(self: @ContractState, _root: u256) -> bool {
            if _root == 0 {
                return false;
            }
            let currentRootIndex = self.current_root_index.read();
            let mut i = currentRootIndex;
            let mut known: bool = false;
            loop {
                if _root == self.roots.entry(i.into()).read() {
                    known = true;
                    break;
                }
                if i == 0 {
                    i = ROOT_HISTORY_SIZE;
                }
                i = i - 1;
                if i == 0 {
                    break;
                }
            };
            return known;
        }

        fn isSpent(self: @ContractState, _nullifierHash: u256) -> bool {
            return self.nullifier_hashes.read(_nullifierHash);
        }

        fn verifier(self: @ContractState) -> ContractAddress {
            return self.verifier.read();
        }

        fn hasher(self: @ContractState) -> ContractAddress {
            return self.hasher.read();
        }
    }

    // Merkle tree functions
    fn insert(
        ref self: ContractState, _leaf: u256, _pool: ContractAddress, _reward: bool,
    ) -> (u256, Array<u256>) {
        let _nextIndex: u32 = self.next_index.read();
        assert!(_nextIndex != MAX_TREE_CAP, "Merkle tree is full. No more leaves can be added");
        let mut currentIndex: u32 = _nextIndex;
        let mut currentDay = 1;
        if (_reward == true) {
            currentDay = IPoolDispatcher { contract_address: _pool }.currentDay();
        }
        let mut currentLevelHash = IHasherDispatcher { contract_address: self.hasher.read() }
            .MiMC5Sponge([_leaf, currentDay], 0);
        let mut left: u256 = 0;
        let mut right: u256 = 0;
        let mut subtree_helper: Array<u256> = ArrayTrait::new();

        for i in 0..self.levels.read() {
            if currentIndex % 2 == 0 {
                left = currentLevelHash;
                right = self.zeros(i);
                self.filled_subtrees.entry(i.into()).write(currentLevelHash)
            } else {
                left = self.filled_subtrees.entry(i.into()).read();
                right = currentLevelHash;
                subtree_helper.append(self.filled_subtrees.entry(i.into()).read())
            }

            currentLevelHash = self.hashLeftRight(left, right);
            currentIndex = currentIndex / 2;
        };
        let newRootIndex: u32 = (self.current_root_index.read() + 1) % ROOT_HISTORY_SIZE;
        self.current_root_index.write(newRootIndex);
        self.roots.entry(newRootIndex.into()).write(currentLevelHash);
        self.next_index.write(_nextIndex + 1);
        return (_nextIndex.into(), subtree_helper);
    }
}

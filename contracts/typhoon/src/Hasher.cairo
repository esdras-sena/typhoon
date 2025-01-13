#[starknet::contract]
pub mod Hasher {
    use starknet::storage::StoragePathEntry;
    use super::super::interfaces::IHasher::{IHasher};
    use starknet::storage::StoragePointerWriteAccess;
    use starknet::storage::StoragePointerReadAccess;
    use starknet::storage::Map;
    use core::integer::u256_wide_mul;
    use core::integer::u512_safe_div_rem_by_u256;
    use core::zeroable::NonZero;
   
    const p: u256 = 21888242871839275222246405745257275088548364400416034343698204186575808495617;

    const c: [u256; 20] = [
        0,
        25823191961023811529686723375255045606187170120624741056268890390838310270028,
        71153255768872006974285801937521995907343848376936063113800887806988124358800,
        51253176922899201987938365653129780755804051536550826601168630951148399005246,
        66651710483985382365580181188706173532487386392003341306307921015066514594406,
        45887003413921204775397977044284378920236104620216194900669591190628189327887,
        14399999722617037892747232478295923748665564430258345135947757381904956977453,
        29376176727758177809204424209125257629638239807319618360680345079470240949145,
        13768859312518298840937540532277016512087005174650120937309279832230513110846,
        54749662990362840569021981534456448557155682756506853240029023635346061661615,
        25161436470718351277017231215227846535148280460947816286575563945185127975034,
        90370030464179443930112165274275271350651484239155016554738639197417116558730,
        92014788260850167582827910417652439562305280453223492851660096740204889381255,
        40376490640073034398204558905403523738912091909516510156577526370637723469243,
        903792244391531377123276432892896247924738784402045372115602887103675299839,
        112203415202699791888928570309186854585561656615192232544262649073999791317171,
        114801681136748880679062548782792743842998635558909635247841799223004802934045,
        111440818948676816539978930514468038603327388809824089593328295503672011604028,
        64965960071752809090438003157362764845283225351402746675238539375404528707397,
        98428510787134995495896453413714864789970336245473413374424598985988309743097
    ];
   
    #[storage]
    struct Storage { 
    }

    #[constructor]
    fn constructor(ref self: ContractState) {
    }

    #[abi(embed_v0)]
    impl Hasher of IHasher<ContractState>{
        fn MiMC5Sponge(self: @ContractState, _ins: [u256; 2], _k: u256) -> u256{
            let mut lastR: u256 = 0;
            let mut lastC: u256 = 0;
            let ins = _ins.span();
            for i in 0..ins.len(){
                lastR = addmod(@lastR, ins[i]);
                let (lr, lc) = MiMC5Feistel(self, @lastR, @lastC, @_k);
                lastR = lr;
                lastC = lc;
            };
            return lastR;
        }
    }

    fn MiMC5Feistel(self: @ContractState, _iL: @u256, _iR: @u256, _k: @u256) -> (u256, u256){
        let nRounds: u8 = 20;
        let mut lastL = *_iL;
        let mut lastR = *_iR;
        let mut mask: u256 = 0;
        let mut mask2: u256 = 0;
        let mut mask4: u256 = 0;
        let mut temp: u256 = 0;

        for i in 0..nRounds{
            mask = addmod(@lastR, _k);
            mask = addmod(@mask, c.span()[i.into()]);
            mask2 = safe_mul_mod(@mask, @mask);
            mask4 = safe_mul_mod(@mask2, @mask2);
            mask = safe_mul_mod(@mask4, @mask);

            temp = lastR;
            lastR = addmod(@lastL, @mask);
            lastL = temp;
        };
        return (lastL,lastR);
    }

    fn safe_mul_mod(a: @u256, b: @u256) -> u256{
        let mut re = u256_wide_mul(*a, *b);
        let nzm: NonZero<u256> = p.try_into().unwrap();
        let (_, res) = u512_safe_div_rem_by_u256(re, nzm);
        return res;
    }

    fn addmod(x: @u256,y: @u256) -> u256{
        return ((*x % p)+(*y % p)) % p;
    }
}
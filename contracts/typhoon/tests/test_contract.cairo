use starknet::ContractAddress;

use snforge_std::{declare, ContractClassTrait, DeclareResultTrait};

use typhoon::interfaces::IHasher::{IHasherSafeDispatcher, IHasherDispatcher, IHasherSafeDispatcherTrait, IHasherDispatcherTrait};

fn deploy_contract(name: ByteArray) -> ContractAddress {
    let contract = declare(name).unwrap().contract_class();
    let (contract_address, _) = contract.deploy(@ArrayTrait::new()).unwrap();
    contract_address
}

#[test]
fn test_increase_balance() {
    let contract_address = deploy_contract("Hasher");

    let k: u256 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    let mut ins: [u256; 2] = [
    8446592859352799428420270221449902464741693648963397251242447530457567083492,
    1064796367193003797175961162477173481551615790032213185848276823815288302804];

    

    let dispatcher = IHasherDispatcher { contract_address };

    let r = dispatcher.MiMC5Sponge(ins,k);
    println!("result {r}");
    assert(r == 20314672684573017317920629862504501369327185477692989173621274148638071089191, 'Is an invalid result hash');
}

// #[test]
// #[feature("safe_dispatcher")]
// fn test_cannot_increase_balance_with_zero_value() {
//     let contract_address = deploy_contract("HelloStarknet");

//     let safe_dispatcher = IHelloStarknetSafeDispatcher { contract_address };

//     let balance_before = safe_dispatcher.get_balance().unwrap();
//     assert(balance_before == 0, 'Invalid balance');

//     match safe_dispatcher.increase_balance(0) {
//         Result::Ok(_) => core::panic_with_felt252('Should have panicked'),
//         Result::Err(panic_data) => {
//             assert(*panic_data.at(0) == 'Amount cannot be 0', *panic_data.at(0));
//         }
//     };
// }

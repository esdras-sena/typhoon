use starknet::{ContractAddress};

#[starknet::interface]
pub trait ITyphoon<TContractState> {
    fn deposit(ref self: TContractState, _commitment: Array<u256>, _pool: Array<ContractAddress>, _reward: bool);
    fn withdraw(ref self: TContractState, full_proof_with_hints: Span<felt252>);
    fn getPool(
        self: @TContractState, _token: ContractAddress, _denomination: u256,
    ) -> ContractAddress;
    fn zeros(self: @TContractState, i: u32) -> u256;
    fn getLastRoot(self: @TContractState) -> u256;
    fn isKnownRoot(self: @TContractState, _root: u256) -> bool;
    fn hashLeftRight(self: @TContractState, _left: u256, _right: u256) -> u256;
    fn addPool(
        ref self: TContractState,
        _token: ContractAddress,
        _denomination: u256,
        _day: u256
    );
    fn isSpent(self: @TContractState, _nullifierHash: u256) -> bool;
    fn verifier(self: @TContractState) -> ContractAddress;
    fn hasher(self: @TContractState) -> ContractAddress;
}

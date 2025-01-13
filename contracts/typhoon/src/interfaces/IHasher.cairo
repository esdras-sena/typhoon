#[starknet::interface]
pub trait IHasher<TContractState> {
    fn MiMC5Sponge(self: @TContractState, _ins: [u256; 2], _k: u256) -> u256;
}

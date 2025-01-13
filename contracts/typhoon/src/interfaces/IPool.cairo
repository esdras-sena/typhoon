use starknet::{ContractAddress};
#[starknet::interface]
pub trait IPool<TState> {
    fn processDeposit(ref self: TState, _from: ContractAddress, reward: bool);
    fn processWithdraw(ref self: TState, _recipient: ContractAddress, _day: u256, _relayer: ContractAddress, _relayerFee: u256);
    fn updateDay(ref self: TState);
    fn currentDay(self: @TState) -> u256;
    fn calculateReward(self: @TState, start_day: u256, days: u256) -> u256;
    fn factory(self: @TState)->ContractAddress;
    fn liquidityProviders(self: @TState, _day: u256) -> u256;
    fn rewardedLiquidityProviders(self: @TState, _day: u256) -> u256;
    fn withdrawsInDay(self: @TState, _day: u256) -> u256;
    fn token(self: @TState) -> ContractAddress;
    fn denomination(self: @TState) -> u256;
    fn withdrawFee(self: @TState) -> u256;
    
}
#[starknet::contract]
pub mod Pool {
    use starknet::storage::StoragePathEntry;
    use starknet::storage::StoragePointerWriteAccess;
    use starknet::storage::StoragePointerReadAccess;
    use super::super::interfaces::IERC20::IERC20DispatcherTrait;
    use typhoon::interfaces::IERC20::{IERC20Dispatcher};
    use typhoon::interfaces::IPool::{IPool};
    use starknet::storage::StorageMapWriteAccess;
    use starknet::storage::StorageMapReadAccess;
    use starknet::{ContractAddress, get_block_timestamp, get_contract_address, get_caller_address};
    use starknet::storage::Map;

    const day: u32 = 86400;

    #[storage]
    struct Storage {
        current_day: u256,
        token: ContractAddress,
        denomination: u256,
        fac: ContractAddress,
        withdraws_in_day: Map<u256, u256>,
        liquidity_providers: Map<u256, u256>,
        withdraw_fee: u256,
        rewarded_liquidity_providers: Map<u256, u256>,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState, _token: felt252, _denomination: felt252, _current_day: felt252,
    ) {
        self.token.write(_token.try_into().unwrap());
        self.denomination.write(_denomination.try_into().unwrap());
        self.fac.write(get_caller_address());
        self.current_day.write(_current_day.try_into().unwrap());
        self
            .withdraw_fee
            .write((_denomination.try_into().unwrap() * 5) / 100); // 5% for withdraw fee (this can be changed in future)
    }

    #[abi(embed_v0)]
    impl Pool of IPool<ContractState> {
        fn processDeposit(ref self: ContractState, _from: ContractAddress, reward: bool) {
            assert!(get_caller_address() == self.fac.read(), "Is not the factory");
            IERC20Dispatcher { contract_address: self.token.read() }
                .transferFrom(_from, get_contract_address(), self.denomination.read());
            self
                .liquidity_providers
                .entry(self.current_day.read())
                .write(self.liquidity_providers.read(self.current_day.read()) + 1);
            if (reward) {
                self
                    .rewarded_liquidity_providers
                    .entry(self.current_day.read())
                    .write(self.rewarded_liquidity_providers.read(self.current_day.read()) + 1)
            }
        }

        fn processWithdraw(ref self: ContractState, _recipient: ContractAddress, _day: u256, _relayer: ContractAddress, _relayerFee: u256) {
            let caller = get_caller_address();
            assert!(caller == self.fac.read(), "{:?} Is not the factory", caller);
            self.updateDay();
            let mut days = 0;
            let mut reward = 0;
            if (day != 1) {
                days = getDaysPassed(@_day);
                if(days > 1){
                    reward = self.calculateReward(_day, days);
                }
                
            }

            self
                .withdraws_in_day
                .write(
                    self.current_day.read(),
                    self.withdraws_in_day.read(self.current_day.read()) + 1,
                );
            IERC20Dispatcher { contract_address: self.token.read() }
                .transfer(
                    _recipient, ((self.denomination.read() - self.withdraw_fee.read()) - _relayerFee) + reward,
                );
            if(_relayerFee > 0){
                IERC20Dispatcher { contract_address: self.token.read() }
                    .transfer(_relayer, _relayerFee);
            }
        }

        fn updateDay(ref self: ContractState) {
            let mut cur_day = self.current_day.read();
            let mut dif: u256 = 0;
            if cur_day < get_block_timestamp().into() {
                dif = get_block_timestamp().into() - cur_day;
                if dif > day.into() {
                    let days = getDaysPassed(@cur_day);
                    self.current_day.write(cur_day + (day.into() * days) + day.into());
                }
            }
        }

        fn currentDay(self: @ContractState) -> u256 {
            return self.current_day.read();
        }

        fn calculateReward(self: @ContractState, start_day: u256, days: u256) -> u256 {
            let mut accrued_fee: u256 = 0;
            let mut total_lps: u256 = 0;
            // needs to hold for at least 1 day
            let s_day = start_day + day.into();
            for i in 0..days {
                total_lps = total_lps
                    + self.rewarded_liquidity_providers.read(s_day + (day.into() * i));
                let wd = self.withdraws_in_day.read(s_day + (day.into() * i));
                accrued_fee = accrued_fee + (wd * self.withdraw_fee.read());
            };
            let lps_part = (accrued_fee * 80) / 100; // 80% of the fees goes to the LPs
            let lp_share = lps_part / total_lps;
            return lp_share;
        }
        fn factory(self: @ContractState) -> ContractAddress {
            return self.fac.read();
        }
        fn liquidityProviders(self: @ContractState, _day: u256) -> u256 {
            return self.liquidity_providers.read(_day);
        }
        fn rewardedLiquidityProviders(self: @ContractState, _day: u256) -> u256 {
            return self.rewarded_liquidity_providers.read(_day);
        }

        fn withdrawsInDay(self: @ContractState, _day: u256) -> u256 {
            return self.withdraws_in_day.read(_day);
        }

        fn token(self: @ContractState) -> ContractAddress {
            return self.token.read();
        }

        fn denomination(self: @ContractState) -> u256 {
            return self.denomination.read();
        }

        fn withdrawFee(self: @ContractState) -> u256 {
            return self.withdraw_fee.read();
        }
    }


    fn getDaysPassed(current_day: @u256) -> u256 {
        if(*current_day > get_block_timestamp().into()){
           return 0; 
        }
        let dif = get_block_timestamp().into() - *current_day;
        let r = dif % day.into();
        let days = (dif - r) / day.into();
        return days;
    }
}

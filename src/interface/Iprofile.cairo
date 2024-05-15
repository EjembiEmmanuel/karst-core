use starknet::ContractAddress;
#[starknet::interface]
pub trait IKarstProfile<TState> {
    fn create_karstnft(
        ref self: TState,
        karstnft_contract_address: ContractAddress,
        registry_contract_address: ContractAddress,
        implementation_hash: felt252,
        salt: felt252
    );
    fn get_user_profile_id(self: @TState, user: ContractAddress) -> u256;
    fn get_total_id(self: @TState) -> u256;
    fn get_profile(self: @TState, profile_id: u256) -> ByteArray;
    fn set_profile_metadata_uri(ref self: TState, metadata_uri: ByteArray);
    fn get_profile_owner_by_id(self: @TState, profile_id: u256) -> ContractAddress;
}

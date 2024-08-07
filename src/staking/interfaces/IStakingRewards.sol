// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

interface IStakingRewards {
    // Views
    function lastTimeRewardApplicable() external view returns (uint256);

    function rewardPerToken() external view returns (uint256);

    function earned(address account) external view returns (uint256);

    function getRewardForDuration() external view returns (uint256);

    function underlying() external pure returns (address);

    function underlyingTotalSupply() external view returns (uint256);

    function underlyingBalanceOf(address account) external view returns (uint256);

    // Mutative

    function lockAndStake(uint256 amount) external;

    function unlockAndWithdraw(uint256 amount) external;

    function getReward() external;
}

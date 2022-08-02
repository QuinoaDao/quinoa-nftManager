//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

interface INFTWrappingManager {

    function withdraw (uint256 tokenId, address vault, uint256 amount) external;

    function depositInfo(uint tokenId) external view
        returns (
            address vault,
            uint256 qTokenAmount,
            bool isFullyRedeemed
        );

    function deposit (address user, address vault, uint256 qTokenAmount) external;

    function deposit (uint256 qTokenAmount, uint256 tokenId) external;
}
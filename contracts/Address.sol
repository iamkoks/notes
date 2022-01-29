// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Address {
  mapping(uint=>address) addresses;
  uint count;

  function setAddresses(address userAddress) public {
    addresses[count] = userAddress;
    count++;
  }

  function getIdAddress(address userAddress) public view returns (uint) {
    for (uint i = 0; i <= count; i++) {
      if(addresses[i] == userAddress)
        return i;
    }
  }

  function getAllAddresses() public view returns (address[] memory) {
    address[] memory all = new address[](count);
    for (uint256 i = 0; i < count; i++) {
      all[i] = addresses[i];
    }
    return all;
  }
}

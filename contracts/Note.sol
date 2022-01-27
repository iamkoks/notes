// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Note {
  string public name;
  string public adress;
  uint number;

  function setNote(string memory _name, string memory _adress, uint _number) public {
    name = _name;
    adress = _adress;
    number = _number;
  }

  function getNote() public view returns(string memory, string memory, uint) {
    return(name, adress, number);
  }
}

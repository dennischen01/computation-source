pragma solidity ^0.4.17

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Rent.sol";

contract TestRent {
   Rent rent = Rent(DeployedAddresses.Rent());

   //租借测试用例
    function testUserCanRentSource() public {
    uint returnedId = rent.rent(8);

    uint expected = 8;
    assert.equal(returnedId, expected, "Rent of rent ID 8 should be recorded.");
  }

  // 所有者测试用例
  function testGetAdopterAddressByRentId() public {
    // 期望领养者的地址就是本合约地址，因为交易是由测试合约发起交易，
    address expected = this;
    address renter = rent.adopters(8);
    assert.equal(renter, expected, "Owner of rent ID 8 should be recorded.");
  }

    // 测试所有领养者
  function testGetRenterAddressByRentIdInArray() public {
  // 领养者的地址就是本合约地址
    address expected = this;
    address[16] memory renters = rent.getAdopters();
    assert.equal(renters[8], expected, "Owner of rent ID 8 should be recorded.");
  }
}

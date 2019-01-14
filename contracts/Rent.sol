pragma solidity ^0.4.17;

contract Rent {

  address[1000] public renters;  // 保存租用者的地址

    // 领养宠物
  function rent(uint rentId) public returns (uint) {
    require(rentId >= 0 && rentId <= 999);  // 确保id在数组长度内

    renters[rentId] = msg.sender;        // 保存调用这地址 
    return rentId;
  }

  // 返回领养者
  function getRenters() public view returns (address[1000]) {
    return renters;
  }

}

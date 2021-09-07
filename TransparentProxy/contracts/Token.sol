pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
contract Token_V1  {
   event MyAddress(address);
   uint256 public state;

   function getVersion() external virtual view returns(uint256)
   {
       return 1;
   }
   function setState(uint256 _state) virtual external{
       state = _state;
   }
   
   function myAddress() external view returns (address){
       return address(this);
   }
}


contract Token_V2 is Token_V1  {
   

    function getVersion() external virtual override view returns(uint256)
   {
       return 2;
   }

   function setState(uint256 _state) override external{
       state = _state;
       state = state + 10;
   }
}

contract Token_V3 is Token_V2  {
   

    function getVersion() external override view returns(uint256)
   {
       return 3;
   }

   function setState3(uint256 _state)  external{
       state = _state;
       state = state + 100;
   }
}

contract Token_V3 is Token_V2  {
   

    function getVersion() external override view returns(uint256)
   {
       return 3;
   }

   function setState3(uint256 _state)  external{
       state = _state;
       state = state + 100;
   }
}
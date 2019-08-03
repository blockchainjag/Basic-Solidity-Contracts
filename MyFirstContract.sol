pragma solidity ^0.5.1;

interface regulation {
  function loan () external view returns (bool);       //abstract function
  function checkValue(uint amount) external view returns (bool);
}

contract Bank                {
    uint public value;     
    
    constructor (uint amount) public {
        value = amount;
    }
    function deposit (uint amount) public {
        value += amount;
    }
    
    function withdraw (uint amount) public {
        if (checkValue(amount)) {
        value -= amount;
            
        }
    }

    function balance () public view returns (uint) {
        return value;
    }

        function loan () public pure returns (bool) {
        return true;
    }
    function checkValue(uint amount) public view returns (bool) {
        return value >= amount;
    }
    
}

contract myfirstcontract is Bank(100) {                 

    string private myname;       
    uint private myage;            
    
    function setMyName (string memory newName) public {
      myname = newName;
  //    value = 12;                                   
  }
    
    function getMyName () public view returns (string memory) {
      return myname;                                          }
      
    function setMyAge (uint newAge) public {
        myage = newAge;                         }
    
    function getmyage () public view returns (uint) {
     return myage;                                  }


}

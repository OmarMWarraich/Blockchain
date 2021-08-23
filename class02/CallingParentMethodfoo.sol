pragma solidity ^0.8.0;


interface Vehicle{
    event Log(string);
    function service() virtual external;
}

contract Car is Vehicle{
    function service() override public{
        emit Log("Car.Service");
    }
}

contract Truck is Vehicle{
    function service() override public{
        emit Log("Truck.Service");
    }
}

contract MBike is Vehicle{
    function service() override public{
        emit Log("MBike.Service");
    }
}

contract Mehran is Car{
    
}

contract Hino is Truck{
    
}

contract Honda is MBike{
    
}


contract ServiceCenter{
    // method overloading
    function DoService(Car aCar) public {
        aCar.service();
    }
    
}
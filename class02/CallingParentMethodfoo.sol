pragma solidity ^0.8.0;


interface Vehicle{
    event Log(string);
    function service() virtual external;
}

contract Car is Vehicle{
    function service() override virtual public{
        emit Log("Car.Service");
    }
}

contract Truck is Vehicle{
    function service() override virtual public{
        emit Log("Truck.Service");
    }
}

contract MBike is Vehicle{
    function service() override virtual public{
        emit Log("MBike.Service");
    }
}
//During multiple inheritance, specify the service being overridden

contract CarBike is Car, MBike{
    function service() override(Car, MBike) public{
        super.service();
        emit Log("CarBike.Service");
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
    function DoService() public {
        CarBike rickshaw = new CarBike();
        rickshaw.service();
    }
    
}

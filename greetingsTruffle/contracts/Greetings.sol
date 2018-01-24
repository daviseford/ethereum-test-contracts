pragma solidity ^0.4.11;

contract Greetings {
    string message;
    string name;

    function Greetings() {
        message = "I am ready!";
    }

    function setGreetings(string _message) public {
        message = _message;
    }

    function getGreetings() constant returns (string) {
        return message;
    }

    function setName(string _name) public {
        name = _name;
    }

    function getName() constant returns (string) {
        return name;
    }
}
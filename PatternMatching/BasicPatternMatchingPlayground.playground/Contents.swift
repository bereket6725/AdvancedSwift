//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let name = "twostraws"

//basic switch case
switch name {
case "bilbo":
    print("Hello, Bilbo Baggins")
case "twostraws":
    print("Hello, Paul Husdon!")
default:
    print("Authentication failed")
}


//pattern matching using two parameters for the switch statement :D
let newName = "twostraws"
let password = "fr0st1es"

switch (name, password) {
case("bilbo","bagg1n5"):
    print("Hello Bilbo Baggins!")
case("twostraws", "fr0st1es"):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")
}


//can use a tuple in place of the two variables for a multiple pattern matching :D
let authentication = (name: "twoStraws", password: "fr0st1es")

switch authentication {
case("bilbo","bagg1n5"):
    print("Hello Bilbo Baggins!")
case("twostraws", "fr0st1es"):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")
}


//an example partial pattern matching
//essentially you can make a switch case where on of the parameters doesnt matter by using the underscore (looks like "_")

let newAuthentication = (name: "twoStraws", password: "fr0st1es", ipAddress: "127.0.0.1")

switch newAuthentication {
case ("bilbo", "bagg1n5", _):
    print("Hello, Bilbo Baggins!")
case ("twostraws","fr0st1es",_):
    print("Hello, Paul Hudson")
default:
    print("Who are you?")
}




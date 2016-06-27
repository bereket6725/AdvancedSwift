//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//users in the form of tuples
let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo     = (name: "bilbo", password: "bagg1n5")
let taylor    = (name: "taylor", password: "fr0st1es")

let  users = [twostraws, bilbo, taylor] //an array of our users



//loop over the users and print out their name 

for user in users {
    
    print(user.name)
}


//we can use a switch statement case to match specific values as we iterate over our array (mind blown :O )

for case ("twostraws", "fr0st1es") in users{
    print("User twostraws had the password 'fr0st1es'")
}

//you can refer to the local variables to as you iterate through a switch case
for case (let name, let password) in users{
    print("User\(name) has password, \(password)")
}
//another way to write it that might be more readable
for case let (name, password) in users{
    print("User\(name) has password, \(password)")
}

for case let(name, "fr0st1es") in users {
    print("User\(name) has password, fr0st1es")
}
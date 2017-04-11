//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//In Swift, functions can "throw" errors. Which are comparable a functions "return" in performance. 
//This means they are very fast! 
//ex:

enum PasswordError: Error{
    case empty
    case short
    case obvious(message: String)
}

//to mark a function or method as having the ability to 
//throw an error, add a "throws" before the return typ 
// ex:
func encrypt(_ str: String, with password: String) throws -> String {
    //encryption goes here...
    let encryption = password + str + password
    return String(encryption.characters.reversed())
}

//you then use a mix of do, try and catch to run risky code like so
do{
    let encrypted = try encrypt("Secret", with: "L0v3R")
    print(encrypted)
}
catch{
    print("Encryption Failed")
}
//the code above either prints out the return of our encryt function embedded in our "encrypted" constant 
//or return an error message which is handled in the catch block 
//The catch block "catches" all possible errors 

//Sometimes you may prefer to handle individual error cases instead of 
//putting all of them inside one catch block 
//ex:
do{
    let encrypted = try encrypt("SAP Intel", with: "Presidents Eyes Only")
    print(encrypted)
}
catch PasswordError.empty{print("Did not input a Password")}
catch PasswordError.short{print("Password too short!")}
catch PasswordError.obvious(let obvious){print("Password \(obvious) is too Obvious!")}
catch{print("Error")}

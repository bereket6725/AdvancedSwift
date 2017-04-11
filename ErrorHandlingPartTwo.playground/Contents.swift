//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//ERROR PROPAGATION:
//If function A calls function B and function B calls function C, 
//who should handle errors from function C? 
//If you think its function B, then you are already set where you are, but if you think its A,
//(or that one caller should handle some or all errors in a stack of function calls)
//then we need to cover "error propagation"

enum PasswordError: Error{
    case empty
    case short
    case obvious
}

func functionA(){
    do{ try functionB() }
    catch { print("ERROR!") }
}
func functionB() throws {
    try functionC()//the "try" works without a do-catch block bc the error bubbles up to one in fA()
}
func functionC() throws {
    throw PasswordError.short
}


//you could also delegate error handling to whatever function is most appropriate 
//Normally Swift requires you to make all try/catch blocks exhaustive but if you are in a
//throwing function it is waived because your error will just propagate upwards
//In the example below, the first function handles all other errors, the second, if its empty, the third 
// if its short and the fourth if its obvious 

func firstFunction(){
    do{ try secondFunction() }
    catch{ print("\(error.localizedDescription)") }
}
func secondFunction() throws{
    do{ try thirdFunction() }
    catch PasswordError.empty { print("Empty Password!") }
}
func thirdFunction() throws {
    do { try fourthFunction() }
    catch PasswordError.short { print("Password too short!") }
}
func fourthFunction() throws {
    throw PasswordError.obvious
}
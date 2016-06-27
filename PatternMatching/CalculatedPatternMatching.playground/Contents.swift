//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//if divisbile by 3 return "fizz"
//if divisible by 5 return "buzz"
//if divisible by both return "return fizzbuzz"
//if divisible by neither return String value of the number
func fizzbuzz (number: Int)->String {
    switch (number % 3 == 0 , number % 5 == 0) {
    case(true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    default:
        return String(number)
    }
}


fizzbuzz(15)

fizzbuzz(9)

fizzbuzz(8)



//So cool man, so cool :) 
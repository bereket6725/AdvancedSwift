//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//This is a representation of an optional 
//optionals are just enums that are either a "some" (which is a specific type) or none (which is nil)
//But Optionals wrap a specific type and we need want to express that some can be any specifc type (not type 'Any')
//In order to do this, we must use Generics
enum Optional<Wrapped>{
    case some(Wrapped)
    case none
}

let string = Optional.some("howdy")
let number = Optional.some(1)


//In Swift when a protocol refers to "Self" it becomes generic 
//Self becomes a placeholder for "type of the adopter"
//example:
protocol Flier{
    func flockTogetherWith(_ f: Self)
}
//A protocol can declare an associated Type, using the 'associatedType' statement
//This turns a protocol into a generic
//example: 

protocol Canine{
    associatedtype Other
    func flockTogetherWith(_ f: Other)
    func mateWith(_ f: Other)
}
//An adopter will declare some particular type where the generic uses the associated type name thus,
//resolving the placeholder.
//If a wolf object adopts the Canine protocol and specifies a Wolf object in the generic used in the
//protocols function parameters, we have resolved the generic
//ex:
struct Wolf: Canine{
    func flockTogetherWith(_ f: Wolf) {
    }
    func mateWith(_ f: Wolf) {
    }
}
//A generic function can use a generic placeholder type for any of its parameters
func takeAndReturnTheSameThing<T>(t: T)->T{
    return t
}
//An object type declaration can use a generic anywhere within its curly braces
struct HolderOfTwoOfTheSameThings<T>{
    var firstThing: T
    var secondThing: T
    
    init(thingOne: T, thingTwo: T){
        self.firstThing = thingOne
        self.secondThing = thingTwo
    }
}
//ASSOCIATED TYPE CHAINS 
//When a generic placeholder is constrained to a generic protocol with an associated type you can refer
//to that type using the dot notation chan: The placeholder name, a dot and the associated type name
//EXAMPLE:
//You have a fighting game with soldiers and archers.
//Soldiers and archers are enemies.
//Soldiers and Archers are structs that conform to the Fighter protocol that has an "enemy" associated
//type, that itself is constrained to be a fighter
//our fighter will inherit from a "SuperFighter" protocol because associated types cant refer to itself
protocol SuperFighter{}
protocol Fighter: SuperFighter{
    associatedtype Enemy: SuperFighter
}

struct Soldier: Fighter{
    typealias Enemy = Archer
}

struct Archer: Fighter{
    typealias Enemy = Soldier
}


//Now create a generic struct to express the opposing camps of the fighters and suppose that 
//each camp may contain a spy
struct Camp<T: Fighter>{
    let spy: T.Enemy//<-- The dot syntax mentioned from before
}
//if the Camp is of Type Soldier, the spy is an archer and if the Camp is an Archer the spy is a Soldier
//Now have clearly defined the relationship without explicitly stating it, nice! 

















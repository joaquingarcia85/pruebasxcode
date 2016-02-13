//
//  main.swift
//  pruebasObjetos
//
//  Created by Joaquin Garcia tristan on 30/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import Foundation


class Dog {
    let name : String
    let license : Int
    init(name: String = "", license:Int = 0){
        self.name = name
        self.license = license
    }
}

/*
Equivalente a:
class Dog {
    var name = ""
    var license = 0
    init(){
        
    }
    init(name:String){
        self.name = name
    }
    init(license:Int){
        self.license=license
    }
    init(name:String, license:Int){
        self.name=name
        self.license=license
    }
}
*/
let fido = Dog(name:"Fido")
let rover = Dog(license:1234)
let spot = Dog(name:"spot", license:1357)
let puff = Dog()

// perro en el que obligamos a inicializarlo con nombre y licencia.
//

class Dog2 {
    let name : String
    let license : Int
    init!(name: String, license:Int){
        self.name = name
        self.license = license
        if name.isEmpty{
            return nil
        }
        if license <= 0{
            return nil
        }
    }
}

let miperro = Dog2(name: "Rudy", license: 123456)
let name = miperro.name

//Referring to self

struct Cat {
    var name : String
    var license : Int
    init(name:String, license: Int){
        self.name = name
       // meow()
        self.license = license
        meow()
    }
    func meow(){
        print("meow")
    }
}

struct Digit {
    var number : Int
    var meaningOfLife : Bool
    init(number: Int){
        self.number = number
        self.meaningOfLife = false
    }
    init (){
        self.init(number:42)
        self.meaningOfLife = true
    }
}

// Propiedades de clases.

class Moi{
    let first = "Matt"
    let last = "Neuburg"
    // let whole = self.first + " " + self.last
    // no valido en tiempo de inicializacion, seria como sigue
    lazy var whole : String = {
        var s = self.first
      
        return s
    }()
}
// sin embargo las propiedades estaticas si se pueden usar en tiempo de inicializacion
// porque se inicializan de tipo lazy.

struct Greeting {
    static let friendly = "hello there"
    static let hostile = "go away"
    static let ambivalent = Greeting.friendly + " but " + Greeting.hostile // se puede usar sin Greeting.
}

struct Greeting2 {
    static let friendly = "hello there"
    static let hostile = "go away"
    static var ambivalent : String { return  self.friendly + " but " + self.hostile
    }
    static func beFriendly(){
        print(self.friendly)
    }
}
Greeting2.beFriendly()

//Methods

class Dog3 {
    let name : String
    let license : Int
    let whatDogsSay = "Woof"
    init!(name: String, license:Int){
        self.name = name
        self.license = license
    }
    func bark(){
        print(self.whatDogsSay)
    }
    func speak(){
        self.bark()
        print("I'm \(self.name)")
    }
}

let fidodido = Dog3(name: "Fido Dido", license: 1234)
fidodido.speak() // "Woof I'm Fido Dido"

struct Digit2 {
    var number : Int
    init(_ n:Int){
        self.number = n
    }
    subscript(ix:Int) -> Int {
        get {
            let s = String(self.number)
            return Int(String(Array(s.characters)[ix]))!
        }
        set{
            var arr = Array(String(self.number).characters)
            arr[ix] = Character(String(newValue))
            self.number = Int(String(arr))!
        }
    }
}

var d = Digit2(1234)
d[0] = 2

class Dog4{
    struct Noise {
        static var noise = "Woff"
    }
    func bark(){
        print(Dog4.Noise.noise)
    }
}

Dog4.Noise.noise = "Arf"

//Instance References

let s = "Hello, world"
let s2 = s.uppercaseString

print(s2)

//Enums

enum ListType{
    case Albums
    case Playlists
    case Podcasts
    case Books
}

let type = ListType.Albums

let type2 : ListType = .Albums

func listTypeExpecter (type: ListType) {
    if type == .Albums {
        print("it's albums")
    }
}
listTypeExpecter(.Albums)

// Case with fixed value

enum ListType2 : Int {
    case Albums
    case Playlists
    case Podcasts
    case Books
}

enum ListType3 : String {
    case Albums = "Albums"
    case Playlists = "Playlists"
    case Podcasts = "Podcasts"
    case Books = "Books"
}

let type3 = ListType3.Albums
print(type3.rawValue)

enum Error {
    case Number(Int)
    case Message(String)
    case Fatal(n:Int, s:String)
}

let err : Error = .Number(4)
let num = 4
let err2 : Error = .Number(num)
let err3 : Error = .Fatal(n:-12, s:"Oh the horror")

switch err3 {
case .Number(let theNumber):
    print("number: \(theNumber)")
case .Message(let theMessage):
    print("message: \(theMessage)")
case .Fatal(let theNumber, let theMessage):
    print("number: \(theNumber), message: \(theMessage)")
}

// Enum initializers

enum ListType4 : String {
    case Albums = "Albums"
    case Playlists = "Playlists"
    case Podcasts = "Podcasts"
    case Books = "Books"
    static var cases : [ListType4] = [Albums, Playlists, Podcasts, Books]
    init!(_ ix:Int){
        if !(0...3).contains(ix){
            return nil
        }
        self = ListType4.cases[ix]
    }
    init!(_ rawValue:String){
        self.init(rawValue:rawValue)
    }
}
let type4 = ListType4.Albums // Albums
let type5 = ListType4(rawValue: "Playlists")! // PlayLists
let type6 = ListType4(2) // Podcasts
let type7 = ListType4(rawValue: "Playlists")

// Enum properties

enum ListType5 : String {
    case Albums = "Albums"
    case Playlists = "Playlists"
    case Podcasts = "Podcasts"
    case Books = "Audiobooks"
    var description : String { return self.rawValue}
}
let type8 = ListType5.Albums
print(type8.description)

//Enum Methods

enum ListType6 : String {
    case Albums = "Albums"
    case Playlists = "Playlists"
    case Podcasts = "Podcasts"
    case Books = "Audiobooks"
    static var cases : [ListType6] = [Albums, Playlists, Podcasts, Books]
    mutating func advance(){
        var ix = ListType6.cases.indexOf(self)!
        ix = (ix+1) % 4
        self = ListType6.cases[ix]
    }
}

var type9 = ListType6.Books
type9.advance()

// CLASSES

class Dog5{
    var name : String = "Fido"
}
let rover2 = Dog5()
rover2.name = "Rover"
var rover3 : Dog5 = Dog5(){
didSet{
    print("did set rover")
}
}
rover3.name = "Rover"

//Subclass and Superclass

class Quadruped {
    func walk(){
        print("walk walk walk")
    }
}
class DogQ : Quadruped{
    func bark(){
        print("woof")
    }
    func barkAndWalk(){
        self.bark()
        self.walk()
    }
}
class CatQ : Quadruped{}

let perro = DogQ()
perro.walk() // walk walk walk
perro.bark()
perro.barkAndWalk()

class NoisyDog : DogQ {
    override func bark(){
        print("woof woof woof")
    }
}
let perroladrador = NoisyDog()
perroladrador.bark()

class NoisyDog2 : DogQ {
    override func bark(){
        for _ in 1...3{
            super.bark()
        }
    }
}

let perroladrador2 = NoisyDog2()
perroladrador2.bark()

//required initializer

class Dog6 {
    var name : String
    required init(name:String){
        self.name = name
    }
}
class NoisyDog3 : Dog6 {
    var obedient = false
    init(obedient:Bool){
        self.obedient = obedient
        super.init(name: "Fido")
    }
    required init(name: String) {
        super.init(name: name)
    }
}

class Dog7{
    class func whatDogsSay() -> String {
        return "woof"
    }
    func bark(){
        print(Dog7.whatDogsSay())
    }
}
class noisyDog4 : Dog7 {
    override class func whatDogsSay() -> String {
        return "WOOF"
    }
}

class Dog8 {
    class var whatDogsSay : String{
        return "woof"
    }
    func bark() {
        print(Dog8.whatDogsSay)
    }
}

// Polymorphism - polimorfismo.

class Dog9 {
    func bark(){
        print("woof")
    }
}
class NoisyDog5 : Dog9 {
    override func bark(){
        super.bark(); super.bark()
    }
    
}
// not possible do this: 
//let d : Dog9 = NoisyDog5()
func tellToBark(d: Dog9){
    d.bark()
}
var ddd : Dog9
ddd = NoisyDog5()
tellToBark(ddd) // woof woof
let d2 : NoisyDog5 = NoisyDog5()
tellToBark(d2) // woof woof

// casting.

class NoisyDog6 : Dog9 {
    override func bark() {
        super.bark(); super.bark()
    }
    func beQuiet(){
        self.bark()
    }
}

func tellToHush(d:Dog9) {
    // d.beQuiet() // No es posible porque beQuiet no existe en Dog9
}
let d3: NoisyDog6 = NoisyDog6()
tellToHush(d3)

func tellToHush2(d:Dog9) {
    (d as! NoisyDog6).beQuiet()
}
let d4 : NoisyDog6 = NoisyDog6()
tellToHush2(d4)

//Protocols.
//Una estructura que implementa un protocolo debe de "implementar" los metodos de dicho protocolo, obligatoriamente.
protocol Flier {
    func fly()
}
struct Bird : Flier{
    func fly(){
        
    }
}





















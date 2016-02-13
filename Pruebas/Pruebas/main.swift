//
//  main.swift
//  Pruebas
//
//  Created by Joaquin Garcia tristan on 29/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import Foundation


func go()
{
    let one = 1
    var two = 2
    two = one
    println(two)
}
func doGo(){
    go()
}


//Clases


class Dog{
    var name = ""
    private var whatADogSays = "Woof"
    func bark(){
        println(self.whatADogSays)
    }
    func speak(){
        self.bark()
    }
}
let dog1 = Dog()
dog1.name = "Fido"
var dog2 = Dog()
dog2.name = "Rover"
println(dog1.name)
println(dog2.name)
dog2 = dog1
println(dog2.name)
dog1.bark()
dog2.speak()
dog2.whatADogSays = "meaw"
dog2.speak()
dog1.whatADogSays = "pio"
println(dog1.whatADogSays)


// funciones con return

func sum
    (x:Int, y:Int)
    ->Int {
    let result = x + y
    return result
}

let suma = sum(4,5)

let x = 4
let y = 5
let z = sum(x,y)

sum(2,4)

let sumadoble = sum(4, sum(2,3))

// funciones sin return

func say1(s:String) ->Void {println(s)}
func say2(s:String) -> () { println(s)}
func say3(s:String) { println(s)}

// funciones sin parametros

func greet1(Void) -> String { return "howdy"}
func greet2() -> () {println("howdy")}
func greet3() {println("howdy")}

// ejemplo de funcion

func repeatString(s:String, #times:Int) ->String {
    var result = ""
    for _ in 1...times {
        result += s}
    return result
}

func repeatString2(s:String, times n:Int) ->String {
    var result = ""
    for _ in 1...n {
        result += s}
    return result
}

let s = repeatString("hit", times: 3)
let t = repeatString2("hit", times: 3)
println(s)
println(t)

// trabajando con cadenas.

let cadena = "hello"
let cadena2 = cadena.stringByReplacingOccurrencesOfString("ell", withString: "ipp")
println(cadena2)

// Overloading -- Funciones con el mismo nombre pero distinta signature

func say (what: String){
    
}
func say (what: Int){
    
}
func say (# what: String){
    
}
func say (# what: Int){
    
}

func say() ->String {
    return "one"
}
func say() ->Int {
    return 1
}

let varcadena:String = say()
let varentero:Int = say()

func giveMeAString(s:String){
    println(s)
}

let result = say() + "two"
giveMeAString(say())

// variadic parameter

func sayStrings(arrayOfStrings: String...){
    for s in arrayOfStrings{println(s)}
}

sayStrings("hey", "ho", "nonny nonny no")

// modifiable parameters

func say(s:String, #times:Int, var #loudly:Bool){
    loudly = true // no problem, we need to declare loudly as var in the say() to change it later in body
}

//otro ejemplo
//Si queremos usar una funcion para modificar un valor global ademas de devolver un valor hacemos algo
//parecido a esto donde: 

func removeFromString(inout s:String, character c:Character)->Int { //la variable que cambiara se declara inout
    var howMany = 0
    while let ix = find(s,c){
        s.removeRange(ix...ix)
        howMany+=1
    }
    return howMany
}
// y a la hora de llamar a la funcion, la variable debe de ser tipo var y en la llamada se usa la direccion de memoria con &
var scadena = "hello"
let resultado = removeFromString(&scadena, character: Character("l"))
println(scadena) //heo
println(resultado) //2

func changeNameOfDog(d:Dog, to tostring:String){
    d.name = tostring
}
let d = Dog()
d.name = "Fido"
println(d.name)
changeNameOfDog(d, to: "Rover")
println(d.name)

//Function In Function

//Recursion

func countDownFrom(ix:Int){
    println(ix)
    if ix > 0 {
        countDownFrom(ix-1)
    }
}
countDownFrom(10)

//Function as value

func doThis(f:()->()){
    f()
}

func whatToDo(){
    println("I did it")
}
doThis(whatToDo)
















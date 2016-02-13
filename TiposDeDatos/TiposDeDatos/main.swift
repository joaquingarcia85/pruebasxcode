//
//  main.swift
//  TiposDeDatos
//
//  Created by Joaquin Garcia tristan on 28/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import Foundation

var numeroEntero : Int // 1 0 -50
var numeroDecimal : Float // 1.76 -2.45
var numeroDecimal2 : Double // 1.32234322 -23.443435
var caracter : Character // 'a' 'b' 'c' H
var cadena : String // "hola que tal"

// Crear un programa en Swift que compare 2 numeros y escriba el mayor de los 2.

var numero1 : Float = 33
var numero2 : Float = 33

if(numero1 > numero2){
    println("El mayor es: \(numero1)")
}else if(numero2 > numero1){
    println("El mayor es: \(numero2)")
}else{
    println("son iguales")
}

// leer de teclado.

func input() ->NSString{
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

var operacion = input()
var resultado = operacion.integerValue
resultado = resultado + 200




//Estructura While
var x : Int = 0
while(x<200)
{
    resultado = resultado + 2
    println("Me estoy ejecutando y voy por la iteracion \(x)")
    x += 1
}


println("El resultado es \(resultado)")

// comparaciones logicas
var i=0

if(i<10 && resultado>12)
{
  println("Todo cierto")
}


















//
//  main.swift
//  Funciones en Swift
//
//  Created by Joaquin Garcia tristan on 28/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import Foundation

func sumar(numero1 : Int, numero2 : Int) -> Int
{
    //operaciones
    var resultado = numero1 + numero2
    
    // valor de retorno
    return resultado
}

var n1 : Int
var n2 : Int
var n3 : Int
var resultado : Int
n1 = 2
n2 = 5

resultado = sumar(n1, n2)



println("El resultado es \(resultado)")


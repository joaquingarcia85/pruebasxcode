//
//  main.swift
//  Ejercicio Peso Lunar
//
//  Created by Joaquin Garcia tristan on 28/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import Foundation

println("Introduce aqui tu peso: ")

func input() ->NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding: NSUTF8StringEncoding)!
}

var peso = input().integerValue

if(peso <= 0 )
{
    println("No escribiste bien tu peso.")
}else{
    
    var pesolunar : Double = Double(peso) * 0.17
    println("Tu peso lunar es: \(pesolunar)")
}

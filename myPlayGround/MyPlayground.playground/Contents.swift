//: Playground - noun: a place where people can play

import UIKit

let testLabel = UILabel(frame: CGRectMake(0,0,100,30))
testLabel.text = "Hello Swift!"
testLabel.textAlignment = NSTextAlignment.Center
testLabel.backgroundColor = UIColor(red: 0.9,green:0.0,blue:0.0, alpha:1.0)
testLabel.layer.cornerRadius=5
testLabel.layer.masksToBounds=true
testLabel
let valorx:CGFloat = 20.0
let valory:CGFloat = 30.0
let punto = CGPointMake(valorx,valory)
let va = 20.0
let vb = Float(30.0)

let c = UILabel(frame: CGRect(x:0,y:0,width: 90, height: 100))
c.text = "Etiqueta"
c.text
let d = c
d.text = "label"

d.text
c.text

//Tipos de datos no vacios

let valor:String
var valor2:Int

//print(valor) no se puede usar sin inicializar
valor2=20
if(valor2>10){
    valor="Test"
}

let valor3:String = "Test2"
// print(valor) valor podría no ser inicializado si valor2 es menor que 20

/*
Alias de tipos
*/

typealias entero = UInt32

var valor1:entero
entero.min
valor1=2324
print (valor1)

/*
Operador 
de asignación
aritmeticos
comparativos
lógicos
de rango
*/

let a = 2
let b = 3
let f = 0.6
let g = 3.3

print(a+b)

let cadenax="Hola "
let cadenay="Swift."

print(cadenax+cadenay)

print(a/b)
print(f/g)

//print(a/g) No es posible porque a es entero y g es double

print(Double(a)/g)
print(a/Int(g))

var restar = 5
restar--
print(restar)
restar = ++restar

var restar2 = restar--
restar
restar2

var incremento = 1

incremento+=2
incremento-=2
incremento*=2
incremento/=2


a == b
a != b
a > b
a < b
a >= b
a <= b

let xx = a == b
xx

let x = d===c // recordemos que c y d eran copias de una etiqueta.
var uno = 2
var dos = -3
var primera:Int = 5
var segunda:Float = 6.5
var tercera:Int = 3
uno==dos ? primera:tercera

uno<dos ? "uno es menor":"dos es menor"

//uno>dos ? primera:segunda No se puede usar porque primera y segunda son de tipos diferentes
uno>dos ? Float(primera):segunda

uno==dos ? "a es igual que b" : uno<dos ? "a es igual que b" : uno>dos ? "a es mayor que b" : "solo se que no se nada"
let vari = 2
vari > 0
vari < 10
vari > 0 && vari < 10
vari < 10 || vari < 0
!(vari==0)
// de rango
















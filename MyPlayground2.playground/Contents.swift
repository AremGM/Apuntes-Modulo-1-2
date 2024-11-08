import UIKit
import Foundation

//Estructuras de control- reutilizar codigo

//Condicionales y ciclos

//Condicionales
//IF - ELSE
var animal = "dog"
var number = 2

if animal == "dog" {
//    print("It's a dog 🥸!")
}


animal = "cat"
if animal == "dog" {
//    print("It's a dog 🥸!")
}else{
//    print("It's not a dog 🥲")
}


if animal != "dog"{
//    print("It's not a dog")
}else{
//    print("It's a dog")
}


if !(animal == "dog"){
//    print("It's not a dog")
}else{
//    print("It's a dog")
}


if animal.count < 4 {
//    print("less than 4 letters")
}else{
//    print("too many letters")
}

if animal == "dog" || animal == "cat" {
//    print("Common")
}else{
//    print("what is it?!")
}


if animal == "dog" && animal == "cat" {
//    print("Impossible")
}else{
//    print("meh")
}



if animal == "cat" {
//    print("It's a cat 🥸!")
}else if number == 2{
//    print("only two??")
}else{
//    print("smth else")
}


if #available(iOS 16.6, *){  //* en adelante
    //Solo para ese iOS
}else{
    // codigo para SO anteriores
}

if #unavailable (iOS 16.6){
    // codigo para SO anteriores
}


//OPERADOR TERNARIO
number == 2 ? print("It's a 2!!!") : print("smth else") //ejecucion
var value = number == 2 ? "It's 2" : "smth else"  //asignar un valor


// ejercicio
//var time2 = 22
// var dark = Array(0...6) + Array(19...23)
// var light = 7...18


////Ejercicio 1
//
//var weather = "lluvia"
//var time = 0
//
//if weather == "nieve" {
//    print("🌨️")
//}else if weather == "lluvia"{
//    print("🌧️")
//}
//
//if time > 6 && time < 19 {
//    print("Usa bloquedor")
//}else if time < 24 {
//    print("No necesito bloquedor")
//}


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//Switch case

//var animal2 = "dog"
//
//switch animal2{
//case "dog": print("🐶")
//case "cat": print("😼")
//case "maouse": print("🐭")
//case "bird": print("🦜")
//default: print("What is it???")
//}
//
//
////Compuesto
//switch animal2{
//case "dog", "mouse", "cat": print("Nice pet")
//default: print("That's a wild animal")
//}
//
//let grade = 9
//switch grade {
//case ...5: print("Oh no")
//case 6..<9: print("nice")
//case 10...: print("wow")
//case 9: print("9's great")
//default: break
//    
//}

//Ejercicio 1

var weather = "lluvia"
var time = 0

if weather == "nieve" {
    print("🌨️")
}else if weather == "lluvia"{
    print("🌧️")
}

if time > 6 && time < 19 {
    print("Usa bloquedor")
}else if time < 24 {
    print("No necesito bloquedor")
}



//ejercicio 2

var xy = (x: -2.0, y: 2.0)

switch xy{
case (0,0): print("Coordenada en el origen")
case (xy.x, xy.y) where xy.x < 0.0 && xy.y < 0.0:print("Quadrante 3")
case (xy.x, xy.y) where xy.x < 0.0 && xy.y >= 0.0:print("Quadrante 2")
case (xy.x, xy.y) where xy.x > 0.0 && xy.y > 0.0:print("Quadrante 1")
case (xy.x, xy.y) where xy.x > 0.0 && xy.y < 0.0:print("Quadrante 4")
case (xy.x,xy.y): print("x = \(xy.x), y = \(xy.y)")
default:break
}



//ejercicio 3
for second in stride(from: 0, through: 60, by: 15) {
    print(second)
}


import Foundation

//while
var counter = 12

while counter < 10 {
    print(counter)
    counter += 1
}

print("")

counter = 6
while 1...5 ~= counter {
//    print(counter)
    counter += 1
}

print("")

counter = 7
repeat{
//    print(counter)
    counter += 1
}while 1...5 ~= counter



//Ejercicio 1
//Programar un serpiente y escaleras, se puede usar todo lo visto

//var dado = Int.random(in: 1...6)

//REPEAT WHILE
//
//var conteo:Int = 0
//
//repeat{
//    var dado = Int.random(in: 1...6)
//    print("Dado = ", dado)
//    conteo += dado
//    
//    if conteo == 2{
//        conteo = 10
//        print("Subes las escales en la posicion", conteo)
//    } else if conteo == 5{
//        conteo = 16
//        print("Subes las escales en la posicion", conteo)
//    }else if conteo == 8{
//        conteo = 17
//        print("Subes las escales en la posicion", conteo)
//    }else if conteo == 13{
//        conteo = 3
//        print("Bajas por la serpiente en la posicion", conteo)
//    }else if conteo == 18{
//        conteo = 7
//        print("Bajas por la serpiente en la posicion", conteo)
//    }else if conteo == 21{
//        conteo = 10
//        print("Bajas por la serpiente en la posicion", conteo)
//    }else if conteo == 23{
//        conteo = 15
//        print("Bajas por la serpiente en la posicion", conteo)
//    }
//    
//    print("Tablero = ",conteo)
//}while conteo <= 24
//
//print("Has ganado!!!")
//
//print("")
//print("")
//print("")
//
////WHILE
//
//var conteo2:Int = 0
//
//while conteo2 < 24{
//    var dado = Int.random(in: 1...6)
//    print("Dado = ", dado)
//    conteo2 += dado
//    
//    if conteo2 == 2{
//        conteo2 = 10
//        print("Subes las escales en la posicion", conteo2)
//    } else if conteo2 == 5{
//        conteo2 = 16
//        print("Subes las escales en la posicion", conteo2)
//    }else if conteo2 == 8{
//        conteo2 = 17
//        print("Subes las escales en la posicion", conteo2)
//    }else if conteo2 == 13{
//        conteo2 = 3
//        print("Bajas por la serpiente en la posicion", conteo2)
//    }else if conteo2 == 18{
//        conteo2 = 7
//        print("Bajas por la serpiente en la posicion", conteo2)
//    }else if conteo2 == 21{
//        conteo = 10
//        print("Bajas por la serpiente en la posicion", conteo2)
//    }else if conteo2 == 23{
//        conteo2 = 15
//        print("Bajas por la serpiente en la posicion", conteo2)
//    }
//    
//    print("Tablero = ",conteo2)
//    
//}
//
//print("Has ganado!!!")



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//Ejercicio 1

//Desarrolla un programa que defina un arreglo de números enteros. El programa debe recorrer
//el arreglo sumando los valores de los elementos. La suma debe continuar hasta que se
//encuentre un 0 en el arreglo o hasta que se llegue al final del arreglo. Luego, el programa debe
//imprimir la suma total de los números procesados. Utilizar ciclos y evaluaciones simples.
print("Ejercicio 1")
var arreglo = [1, 2, 8, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2]
var suma = 0
//var count = 0
var indice = 0
print(arreglo)

for count in arreglo {
    
    print(count)
//    if arreglo[indice] != 0 {
//        //print(arreglo[count])
//        suma += arreglo[indice]
//        //print(suma)
//    }else if arreglo[indice] == 0{
//        print("Se encontro un 0")
//        break
//    }
//    indice += 1
}

//let names = ["Juan", "Pedro", "Mario"]
//for (index, name) in names.enumerated() {
//    print(index)
//    print(name)
//}

//print("La suma es: ", suma)


print("")
print("")

//Ejercicio 2. (20 puntos)
//Escribe un programa que genere un número aleatorio entre 1 y 20 (investiga la función).
//Dependiendo del número generado, el programa debe determinar e imprimir si el número es
//par o impar.
print("Ejercicio 2")
var numero = Int.random(in: 1...20)
print(numero)
if numero % 2 == 0{
    print("El número es par")
}else{
    print("El numero es impar")
}


print("")
print("")

//Ejercicio 3. (20 puntos)
//Crea un programa que defina un arreglo de números enteros. El programa debe calcular la
//suma de los cuadrados de todos los números en el arreglo y luego imprimir el resultado.
print("Ejercicio 3")
var arreglo2 = [1, 2, 3, 4, 5, 6, 7]
var arreglo3: [Int] = []
//var x = 0
var cuadrado = 0
var indice2 = 0
var suma3 = 0
var indice5 = 0

for x in arreglo2{
    cuadrado = arreglo2[indice2] * arreglo2[indice2]
    arreglo3.append(cuadrado)
    indice2 += 1
    
}

for e in arreglo3{
    suma3 += arreglo3[indice5]
    indice5 += 1
}


print(arreglo3)
print("La suma total es: ", suma3)


print("")
print("")

//Ejercicio 4. (20 puntos)
//Desarrolla un programa que defina un arreglo con 5 números de tipo doble (double). El
//programa debe calcular la suma total de estos números y, dependiendo del resultado, mostrar
//un mensaje específico:
//• Si la suma es menor o igual a 5, imprime "Reprobado".
//• Si la suma es mayor o igual a 6 y menor a 10, imprime "Aprobado".
//• Si la suma es exactamente 10, imprime "Aprobado con honores".
print("Ejercicio 4")
var arreglo4: [Double] = [1, 2, 0, 4, 0]
var suma2: Double = 0


for y in 0...4{
    suma2 += arreglo4[y]
}
//print(suma2)
if suma2 <= 5 {
    print("Reprobado")
}else if suma2 >= 6 && suma2 < 10{
    print("Aprobado")
}else if suma2 == 10{
    print("Aprobado con honores")
}else{
    print("Mas de 10")
}

print("")
print("")

//Ejercicio 5. (20 puntos)
//Desarrolla un programa que defina un arreglo de números enteros. El programa debe recorrer
//el arreglo y encontrar el número máximo presente en él. Finalmente, debe imprimir el valor del
//número máximo encontrado en el arreglo.

print("Ejercicio 5")
var arreglo5 = [2, 11, 4, 95, 6, 34, 8, 9]
var mayor = 0

var indice3 = 0

for w in arreglo5{
    if arreglo5[indice3] > mayor{
        mayor = arreglo5[indice3]
        indice3 += 1
    }else{
        indice3 += 1
    }
    
}

print("El numero mayor es:", mayor)


print("")
print("")
//Ejercicio Extra. ( 0.5 extras en la calificación del modulo )
//Desarrolla un programa que defina un arreglo de números enteros. Utilizar una variable que
//represente valor umbral. Luego, el programa debe contar cuántos números en el arreglo son
//mayores que el umbral proporcionado y mostrar el resultado.
//Instrucciones:
//1. Define un arreglo de números enteros.
//2. Crea una variable que represente valor umbral.
//3. Recorre el arreglo y cuenta cuántos elementos son mayores que el umbral.
//4. Imprime la cantidad de elementos que son mayores que el umbral.

print("Ejercicio extra")
var arreglo6 = [1, 2, 3, 4, 5, 6]
var umbral = 1

var contador = 0

var indice4 = 0

for h in arreglo6{
    if arreglo6[indice4] > umbral{
        contador += 1
        indice4 += 1
    }else{
        indice4 += 1
    }
    
}

print(contador)

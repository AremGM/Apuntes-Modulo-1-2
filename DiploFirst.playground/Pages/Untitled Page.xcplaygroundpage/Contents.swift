//
////Comentarios
//
///*
// Bloque de comentarios
// */
//
//
////Variables
//
////var cambia en tiempo de compilación
//var greeting = "Hello, playground"
//greeting = "Hola mundo"
//
//
////constante
//let miConstanteUno = "Hi"
////miConstanteUno = "Adios"
//
//
////Tipos de datos
//
////Entero
//var miEntero = 8
//var miEntero2: Int = 9
////Doble
//var miDoble = 8.0
//var miDoble2: Double = 9.0
////String
//var miString = "float"
//var miString2: String = "3.0"
////Bool
//var miBooleano = true
//var miBooleano2: Bool = true
////Float
//var miFlotante = 1.0
////Flotante solo asi
//var miFlotante2: Float = 7.0
//
//
////Numeros
//var numeroUno = 1
//var numeroDos = 2, numeroTres = 4
//
//var numero: Int32
//let maxValueInt = Int.max
//let minValueInt = Int.min
//
//let maxValueUInt = UInt.max
//let minValueUInt = UInt.min
//
//
//
//numeroUno + numeroDos
//numeroUno - numeroDos
//numeroUno * numeroDos
//numeroUno / numeroDos
//
//
//var dobleDos: Double = 3.0
//var enteroTres: Double = 5
//
//dobleDos + enteroTres
//
//var n1 = 0.1
//var n2 = 0.2
//n1 + n2
//
//
//print(n1 + n2)
//
//
//
//
//n1 > n2 //mayor que
//n1 < n2 //menor que
//n1 >= n2 //mayor o igual que
//n1 <= n2 //menor o igual que
//n1 == n2 //igua que
////n1 === n2 //igual que
//n1 != n2 //diferente que
//
//
//
////String
//
//var caracter: Character
//var caracterDos: String = "hola"
//var caracterTres = "Emi "
//
//caracterDos + caracterTres
//
////caracter de escape
//print("\(caracterDos) a todos, yo soy \(caracterTres)")
//
//
//caracterDos.isEmpty
//"".isEmpty
//
//
////Don't do this to test for empty
//caracterDos.count == 0
//"".count == 0
//
//
//var 🤬 = 3
//var 🫨 = 2
//
//🤬 + 🫨
//
//
////Ejercicio 3
////Declara una variable saludo con el el valor "Hola"
////Declara otra variable nombre con tu nombre
////Combina ambas variables en una sola llamada mensaje e imprime el resultado con un caracter de escape
//var saludo = "Hola"
//var nombreDos = "Emiliano"
//print("\(saludo) \(nombreDos)")
//
//
//
////Array
//
//var array = ["1","2","1","2"]
//var miArreglo: [Int] = [1,2,3,4]
//miArreglo[2]
//
////Agregar
//miArreglo.append(10)
//miArreglo
//miArreglo += [20, 30, 40]
//miArreglo
//
//miArreglo.insert(100, at: 0)
//miArreglo
//
//miArreglo.remove(at: 0)
//miArreglo.removeLast()
//
////Arreglo vacio, saber de que esta vacio
//var otroArreglo:[Int] = []
//var otroArreglo2 = [Int]()
//
//
////SETS unicos y no ordenados
//var letters = Set<Character>()
//letters.insert("a")
//letters
//
//var miSet: Set <String> = ["Emiliano", "Gil", "Arath"]
//var favoriteGenre: Set = ["Rock", "Classical", "Hip hop"]
//
//miSet.insert("Juan")
//print(miSet)
//miSet.remove("Juan")
//print(miSet)
//
////numeros.contains(3) valida si existe en el set
//
//
////Diccionarios no orednado, llave-valor
//var diccionario: [String:Int] = [:]
//var diccionarioDos: [String:Int] = [:]
//var airports: [String:String] = ["AICM":"Benito Juarez", "AIFA":"Dublin"]
//
//print(diccionarioDos)
//print(diccionarioDos)
//
//airports["AICM"]
//airports["LHR"] = "London"
//
//airports
//
//airports["LHR"]
//
//airports["APL"] = "Apple Internatinal"
//
//airports["APL"] = nil
//
//airports.removeValue(forKey: "AIFA")
//airports
//
//
////Tuplas 2 valores o mas en una sola variable
//var codigoColor = "#ff0000"
//var nombreColor = "Rojo"
//
//var color = ("#ff0000", "Rojo")
//color.1
//color.0
//
//print("el color es \(color.0) y su codigo es \(color.1)")
//
//
//var estudiante = ("Emiliano Gil", 23)
//estudiante.0
//estudiante.1
//
//var estudianteUno: (String, Int) = ("Emiliano Gil", 23)
//
//var estudianteDos = (nombreAlumno: "Emiliano Gil", edad: 26)
//estudianteDos.nombreAlumno
//estudianteDos.edad
//
////command + ¿ comenta todo el codigo
////Ejercicio 4: Tuplas
////Crea una tupla llamada persona que contenga tu nombre, tu edad y tu ciudad
////Desestructura la tupla para obtener cada uno de los valores e imprimelos
//
//var persona = (nombre: "Emiliano", edad: 23, ciudad: "CDMX")
//print("Hola soy \(persona.nombre) tengo \(persona.edad) y soy de la \(persona.ciudad)")
//
//
//var inventario = [""]
//
//var categorias: Set = ["Ferrari", "1", "1M"]


let numbers: [String] = ["1", "3", ".","5"]
if let result = joinStringsAsDouble(numbers) {
    print("Resultado: \(result)") // Imprimirá "Resultado: 1.35"
} else {
    print("Error al convertir a Double.")
}



func joinStringsAsDouble(_ array: [String]) -> Double? {
    // Concatenar los strings usando "." como separador
    let concatenatedString = array.joined()
    
    // Convertir el string concatenado de vuelta a Double
    return Double(concatenatedString)
}









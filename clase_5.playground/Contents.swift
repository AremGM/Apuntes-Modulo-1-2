import Foundation

//

//func myAwsomePrintingFunction(name: String){
//    print("Hello \(name)")
//}
//
//myAwsomePrintingFunction(name: "Emiliano") //() ejecuta la funcion
//
//func add(lhs: Int, rhs: Int){
//    print("\(lhs) + \(rhs) = \(lhs + rhs)")
//}
//
//add(lhs: 2, rhs: 2)
//                          
//
//
//func printWelcomeMessage (to name: String, for course: String = "Diplomado BD"){
//    print("Hello \(name), welcome to: \(course)")
//}
//printWelcomeMessage(to: "Emi", for: "Diplomado iOS")
//printWelcomeMessage(to: "Anais")
//
//
//// In-out parameters
//var error = "The process failed: "
//func appendErrorCode(_ code: Int, toErrorString errorString: inout String){ //_ no especifica un nombre en el argumento
//    if code == 400 {
//        errorString += "bab request"
//    }
//}
//
//print(error)
//appendErrorCode(400, toErrorString: &error)
//print(error)


//func welcomeMessage (to name: String) -> String {
//    return "Hello \(name)"
//}
//
//let welcomeMessageText = welcomeMessage(to: "Emiliano")
//print(welcomeMessageText)

//func areaOfTriangleWith(base: Double, height:Double) -> Double {
//    let rectangle = base * height
//    
//    func divide() -> Double {
//        return rectangle / 2
//    }
//    return divide()
//}
//
//print(areaOfTriangleWith(base: 10, height: 10))

//
//func sortedEvenOddNumbers (_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
//    var evens = [Int]()
//    var odds = [Int]()
//    
//    for number in numbers{
//        if number % 2 == 0{ //numeros positivos - numeros negativos funciona diferente
//            evens.append(number)
//        }else{
//            odds.append(number)
//        }
//    }
//    return (evens:evens, odds:odds)
//}
//
//let sortedNumbers = sortedEvenOddNumbers([1, 3, 4, 5, 6, 7, 8, 2])
//print(sortedNumbers.evens)
//print(sortedNumbers.odds)
//

//func grabMiddleName (fromFullName name: (String, String?, String)) -> String? {
//    return name.1
//}
//
//let middleName = grabMiddleName(fromFullName: ("Emiliano", nil, "Gil"))
//print(middleName)


func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) -> String {
    if let middleName = name.middle {
        return "Hi, \(middleName)"
    }else {
        return "I cannot greet you as you don't have a middle name"
    }
}

//print(greetByMiddleName(fromFullName: (first: "Emiliano", middle: nil, last: "Gil")))
//print(greetByMiddleName(fromFullName: (first: "Emiliano", middle: "some middle name", last: "Gil")))



func greetByMiddleName2(fromFullName name: (first: String, middle: String?, last: String)) -> String {
    guard let middleName = name.middle else {
        return "I cannot greet you as you don't have a middle name"
    }
        
    return "Hi, \(middleName)"
}
//
//print(greetByMiddleName2(fromFullName: (first: "Emiliano", middle: nil, last: "Gil")))
//print(greetByMiddleName2(fromFullName: (first: "Emiliano", middle: "some middle name", last: "Gil")))

//Clase 16
//Closures funcion sin nombre

let volounteerCounts = [1, 3, 40, 32, 2, 55, 77]

//(Int, Int) -> Bool
func isAscending(_ lhs: Int, _ rhs: Int) -> Bool{
    return lhs < rhs
}

//let volunteerSorted = volounteerCounts.sorted(by: isAscending)

//let volunteerSorted = volounteerCounts.sorted(by: { (lhs: Int, rhs: Int) -> Bool in
//        return lhs < rhs
//})

//let volunteerSorted = volounteerCounts.sorted(by: { lhs, rhs in lhs < rhs })

//let volunteerSorted = volounteerCounts.sorted(by: { $0 < $1 })

//let volunteerSorted = volounteerCounts.sorted { $0 < $1 }

//print(volunteerSorted)

//
//func doAwesomeWork (on input: String, with trasnformer: (String) -> String, completion: () -> ()) {
//    
//}
//doAwesomeWork(on: "Something", with: {
//                                //return same string
//                                        $0
//                            }, completion: {
//                                    //When completed execute this
//                                            })
//
//doAwesomeWork(on: "Something", with: {$0}) { }
//
//doAwesomeWork(on: "Something") {$0} completion: { }



func format (numbers: [Double], formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    
    for number in numbers {
        let formattedNumber = formatter(number)
        result.append(formattedNumber)
    }
    return result
}

//let somenumbers: [Double] = [1, 4, 6, 3, 6, 7, 23]
//
//let fpriceNumbers = format(numbers: somenumbers, formatter: {(number: Double) -> String in
//return "$ \(number)"})
//
//
////let intNumbers = format(numbers: somenumbers, formatter: {(number: Double) -> String in
////return "\(Int(number))"})
//
//let intNumbers = format(numbers: somenumbers, formatter: { "\(Int($0))"})
//
//let notDefinedFormat = format(numbers: somenumbers)
//
//print(fpriceNumbers)
//print(intNumbers)
//print(notDefinedFormat)


func experimentWithScopes (){
    var numberOfTransformations: Int = 0
    
    let rounder: (Double) -> String = {
        numberOfTransformations += 1
        return "\($0.rounded())"
    }
    let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.85]
    let rounderAverages = format (numbers: volunteerAverages, formatter: rounder)
    print(rounderAverages)
    print(numberOfTransformations)
}

//experimentWithScopes()


//Functional

// - functions --> first class citizens
// - pure functions --> same result on same imput
// - inmutability --> Struct
// - Strong typing

// map
// [1, 2, 3, 4] -> ["1", "2", "3", "4"]
let mapResult = [1, 2, 3, 4].map {"\($0)"}
print(mapResult)


// filter
let filterResult = [10.5, 23.1, 12, 56, 3].filter {$0 > 10}
print(filterResult)


// reduce
let reduceResult = [10, 12, 20, 23, 25, 1, 3].reduce(0) {partialResult, numbersOfVolunteers in partialResult + numbersOfVolunteers
}
print(reduceResult)





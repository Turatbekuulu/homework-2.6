//1) - Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли
print("Enter any sentence:")
var anySentence = readLine()

//func countLetters(object1: String) -> Int {
//
//    for amountLetters in object1 {
//        amountLetters
//    }
//    return object1.count
//}
//
//var result = countLetters(object1: anySentence!)
//print(result)


var countLetters: (String) -> Int
countLetters = {$0.count}
var result = countLetters(anySentence!)
print("\(result) letters in the sentence")



//2) - Составить замыкание, которое переводит наши деньги в курс доллара.

print("Enter the sum which you want to became into the dollars:")
var somIntoDollar = Double(readLine()!)!

var becameIntoDollar: (Double) -> Double
becameIntoDollar = {$0/82 }
var result2 = becameIntoDollar(somIntoDollar)
print("\(result2) dollars")



//3) - Составить программу с помощью функции sorted(), которая cортирует список имен по кол-ву букв по возрастанию.


var names: [String] = ["Arsen", "Nurayim", "Bermet", "Kalybek"]
names.sort()

struct User {

    var firstName: String
}

var users = [
User(firstName: "Arsen"),
User(firstName: "Nurayim"),
User(firstName: "Bermet"),
User(firstName: "Kalybek")
]

users.sort {
    $0.firstName < $1.firstName
}

let sortedUsers = users.sorted {
    $0.firstName < $1.firstName
}

print(sortedUsers)



//написать функцию аналогичную map() вручную используя цикл.

var arrayInt: [Int] = [2, 4, 6]

func myMap<T>(array: [Int], closuer: (Int) -> T) -> [T] {
    var emptyArray: [T] = []
    for object in array {
        emptyArray.append(closuer(object))
    }
    return emptyArray
}
let result5 = myMap(array: arrayInt, closuer: {$0 * $0})
print(result5)
let result6 = myMap(array: arrayInt, closuer: {$0 + 10})
print(result6)
let result7 = myMap(array: arrayInt, closuer: {String($0)})
print(result7)

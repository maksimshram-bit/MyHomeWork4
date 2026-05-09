import UIKit

// MARK: - Задание 1
print("------------")

func printHelloWorld() {
    print("Hello, world!")
}

printHelloWorld()

func helloUser(name: String) {
    print("Hello \(name)!")
}

helloUser(name: "Misha")

func returnHelloUser(name: String) -> String {
    "Hello \(name)!"
}

returnHelloUser(name: "Maksim")

// MARK: - Задание 2
print("------------")

func sum(name: String, surname: String) -> Int {
    let sumString = (name + surname).count
    return sumString
}

print(sum(name: "Nikita ", surname: "Pashin"))

// MARK: - Задание 3
print("------------")

func checkSquareNumber(number: Int) -> Int {
    let square = number * number
    return square
}

print(checkSquareNumber(number: 8))

// MARK: - Задание 4
print("------------")

func foundAreaCircle(component: Int) -> Double {
    let squareComponent2 = component * component
    let area = Double.pi * Double(squareComponent2)
    return area
}

print(foundAreaCircle(component: 4))

// MARK: - Задание 5
print("------------")

func checkTimeOfDay(hour: Int) {
    if hour >= 0 && hour <= 5 || hour >= 22 && hour <= 24 {
        print("It's a night!")
    } else if hour >= 6 && hour < 22 {
        print("It's a day!")
    } else {
        print("Invalid value!")
    }
}

checkTimeOfDay(hour: 3)
checkTimeOfDay(hour: 5)
checkTimeOfDay(hour: 6)
checkTimeOfDay(hour: 9)
checkTimeOfDay(hour: 16)
checkTimeOfDay(hour: 19)
checkTimeOfDay(hour: 22)
checkTimeOfDay(hour: 23)
checkTimeOfDay(hour: -1000)
checkTimeOfDay(hour: 0)
checkTimeOfDay(hour: 67)

// MARK: - Задание 6
print("------------")

func checkMonthNumber(numberOfMouth: Int) -> String {
    if numberOfMouth < 1 || numberOfMouth > 12 {
            return "Invalid value"
        } else if numberOfMouth == 12 || numberOfMouth <= 2 {
            return "It's winter"
        } else if numberOfMouth >= 3 && numberOfMouth <= 5 {
            return "It's spring"
        } else if numberOfMouth >= 6 && numberOfMouth <= 8 {
            return "It's summer"
        } else {
            return "It's autumn"
        }
    }

print(checkMonthNumber(numberOfMouth: -100))


// MARK: - Задание 7
print("------------")

func  splittingPhoneNumber(phoneNumber: String) {
     let countryCode = phoneNumber.prefix(4)
     
     let afterCountryCode = phoneNumber.dropFirst(4)
     let operatorCode = afterCountryCode.prefix(2)

     let subscriberNumber = afterCountryCode.suffix(7)
     
     print("Код страны: \(countryCode)")
     print("Код оператора: \(operatorCode)")
     print("Номер абонента: \(subscriberNumber)")
}
  
splittingPhoneNumber(phoneNumber: "+375448320929")

// MARK: - Задание 9*
print("------------")

func calculateFactorial(_ number: Int) -> Int {
    if number <= 1 {
        return 1
    } else {
        return number * calculateFactorial(number - 1)
    }
}

let result = calculateFactorial(7)
print(result)

//MARK: - Задание 10*
print("------------")

func printFibonacciNumbers(number: Int) -> [Int] {
    if number < 0 {return [] }
    if number == 0 { return [0] }
    if number == 1 { return [0, 1] }
    
    var calculation = [0, 1]
    for index in 2...number {
        let nextNumber = calculation[index-1] + calculation[index-2]
        calculation.append(nextNumber)
    }
    
    return calculation
}

print(printFibonacciNumbers(number: 19))


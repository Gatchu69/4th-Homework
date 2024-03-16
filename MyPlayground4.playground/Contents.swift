import Foundation

// 1. while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.
var number = 1
var evenNumbers = 1
while number < 20 {
    if number % 2 == 1{
        evenNumbers*=number
        print(evenNumbers)
    }
    number += 1
}

// 2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”
var newText : String = "Burger"
var helpstring = ""
for char in newText{
    helpstring = String(char)+helpstring
}
print(helpstring)

// 3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
var index = 0
while index < 20 {
    switch index % 3 {
    case 0:
        print("🔴")
    case 1:
        print("🟡")
    case 2:
        print("🟢")
    default:
        break
        }
    index += 1
}


// 4.Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”
var tickets = 50
while tickets > 0 {
    tickets -= 1
    print("ბილეთი გაყიდულია დარჩენილია \(tickets)")
    if tickets == 0 {
        print("ყველა ბილეთი გაყიდულია გელოდებით კონცეტრზე ")
    }
}

// 5. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

let numbers = [1, 2, 3, 4]


// 6. დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას
let testclosure : (Double, Double) -> Double = {
    x,y in
    return x - y
}
print(testclosure(3.4, 3.8))

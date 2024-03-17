import Foundation

// 1. დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)

    
// 2. დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

func doubleArray(array: [Int]) -> Bool {
    for value in array{
        var double2 = value*value
        print(double2)
    }
    return true
}
let doubled = doubleArray(array: [1, 2, 3, 4, 5])

// 3. დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.

//var numbers = [1, 2, 3, 4, 5, 6]
//for even in numbers{
//    if even % 2 == 0 {
//        print(even)
//    }
//}
func evenNumbers (array: [Int])  {
    for even in array {
        if even % 2 == 0 {
            print(even)
        }
    }
}
evenNumbers(array: [1, 10, 20, 15, 16, 18, 19])

// 4. დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.


// 5. შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი

var contactDict: [String: Int] =  [:]
contactDict["Nodiko"] = 213123987
contactDict["Gela"] = 456789987
print(contactDict)
contactDict.count
contactDict.isEmpty
contactDict.removeValue(forKey: "Gela")
print(contactDict)

// 6. დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key


// 7. შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.

//var doubleArray = [1.2, 20.1, 3.2, 20.0, 5.2]
//
//for maxNum in doubleArray.sorted(){
//    print(maxNum )
//}


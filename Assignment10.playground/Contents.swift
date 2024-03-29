import Foundation

// 1. შექმენით ციკლური რეფერენცები და გაწყვიტეთ
// 2. აუცილებელია ქლოჟერების გამოყენება
// 3. აუცილებელია value და რეფერენს ტიების გამოყენება (კლასები, სტრუქტურები, ენამები და პროტოკოლები)
// 4. აუცილებელია გამოიყენოთ strong, weak & unowned რეფერენსები ერთხელ მაინც
// 5. დაიჭირეთ self ქლოჟერებში
// 6. გატესტეთ მიღებული შედეგები ინსტანსების შექმნით და დაპრინტვით

class Dog{
    var name: String
    init(name: String) {
        self.name = name
    }
    var owner: Owner?
    deinit {
        print("🔴🔴")
    }
}

class Owner {
    let ownerName: String
    init(ownerName: String) {
        self.ownerName = ownerName
    }
    weak var pet: Dog?
    deinit {
        print("🟢🟢")
    }
}
// MARK: Strong reference without weak in 26th line
//var john: Owner?
//john = Owner(ownerName: "John Wick ")
//var dog: Dog?
//dog = Dog(name: "Sam")
//
//john!.pet = dog
//dog!.owner = john
//
//john = nil
//dog = nil

// MARK: Weak reference
var john: Owner?
john = Owner(ownerName: " бабаяга ")

var dog: Dog?
dog = Dog(name: "some Dog  ")

john!.pet = dog
dog!.owner = john

dog = nil
john = nil

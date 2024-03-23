import Foundation
// 1. შექმენით Enum-ი სახელით WeekDay შესაბამისი ქეისებით. დაწერეთ ფუნქცია რომელიც იღებს ამ ენამის ტიპს და ბეჭდავს გადაწოდებული დღე სამუშაოა თუ დასვენების.

enum Weekdays {
    case monday
    case thuesday
    case wednsday
    case thursday
    case friday
    case saturday
    case sunday
}
var workday = Weekdays.sunday
switch workday {
case .monday, .thuesday, .wednsday, .thursday, .friday :
    print("Workday")
    case .saturday, .sunday:
    print("freeday")
}

// 2. შექმენით Enum-ი სახელად GialaSquad, რომელიც აღწერს გია სურამელაშვილის ფანკლუბის წევრების დონეებს ქეისებით : “TsigroviManto”, “MoshishvlebuliMkerdi”, “TuGapatio”. შექმენით ფროფერთი GialaSquad-ში, რომელსაც ექნება ინფორმაცია თუ რა ღირს თითოეული დონე თვეში (დონეები დალაგებულია ძვირიდან იაფისაკენ). დაუმატეთ მეთოდი რომელიც დაბეჭდავს თითოეული დონის ფასს
enum GialaSquad : Int {
    case TsigroviManto = 1200
    case MoshishvlebuliMkerdi = 120
    case TuGapatio = 10000
} // ფროფერთის შექმნა ვერ გავიგე :(

// 3. შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.
enum Weather {
    case Sunny(Celsius: Int)
    case Clody(Celsius: Int)
    case Rainy(Celsius: Int)
    case Snowy(Celsius: Int)
}

func advicing(checking: Weather){
    switch checking {
    case .Sunny(let celsius) where celsius >= 10:
        print("T-Shirt")
    case .Clody(let celsius) where celsius >= 5:
        print("Boots")
    case .Rainy(let celsius) where celsius >= 3:
        print("umbrella")
    case .Snowy(let celsius) where celsius >= 1:
        print("Coat")
    default :
        break
    }
}

advicing(checking: .Sunny(Celsius: 3))


// 4.  შექმენით struct-ი Kanye, ფროფერთებით: album, releaseYear. ამის შემდეგ შექმენით array-ი Kanye-ს ტიპის, ჩაამატეთ რამოდენიმე Kanye-ს ობიექტი, და შეავსეთ მასივი კანიეებით. დაწერეთ ფუნქცია, რომელიც მიიღებს ამ კანიეების მასივს და წელს. ფუნქციამ უნდა დაგვიბრუნოს ყველა ალბომი რომელიც გამოშვებულია გადაწოდებული წლის შემდეგ და დაბეჭდოს ისინი.
struct Kanye {
    var album: String
    var releaseYear: Int
}

var kanye: [String: Int] =  ["album1": 2000, "album2": 2001, "album3": 2002]



import Foundation
/* შევქმნათ Class Book.
 Properties: bookID(უნიკალური იდენტიფიკატორი Int), String title, String author, Bool isBorrowed.
 Designated Init.
 Method რომელიც ნიშნავს წიგნს როგორც borrowed-ს.
 Method რომელიც ნიშნავს წიგნს როგორც დაბრუნებულს.
*/
class Book {
    let bookId: Int
    let title: String
    let author: String
    var isBorrowd: Bool
    
    init(bookId: Int, title: String, author: String, isBorrowd: Bool   ) {
        self.bookId = bookId
        self.title = title
        self.author = author
        self.isBorrowd = isBorrowd
    }
    func markAsBorrowed() {
        if isBorrowd {
            print("\(title) book #\(bookId) is borrowd ")
        } else {
            print("\(title) #\(bookId) is not borrowd")
        }
    }
    func markAsBacked() {
        if isBorrowd{
            print("\(title) Book isn't returned ")
        } else {
            print("\(title) Book is returned ")
        }
    }
}
var book = Book(bookId: 1, title: "Samoseli Pirveli ", author: "Guram Dochanashvili ", isBorrowd: true)
book.markAsBacked()


/* 2. შევქმნათ Class Owner
 
 Properties: ownerId(უნიკალური იდენტიფიკატორი Int), String name, Books Array სახელით borrowedBooks.
 Designated Init.
 Method რომელიც აძლევს უფლებას რომ აიღოს წიგნი ბიბლიოთეკიდან.
 Method რომელიც აძლევს უფლებას რომ დააბრუნოს წაღებული წიგნი.
*/
class Owner {
    let ownerId: Int
    var name: String
    var borrowedBooks: [String]
    
    init(ownerId: Int, name: String, borrowedBooks: [String]) {
        self.ownerId = ownerId
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
    func allowToTakeBook(){
        
    }
}

/* შევქმნათ Class Library
 
 Properties: Books Array, Owners Array.
 Designated Init.
 Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
 Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
 Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.
 Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს.
 Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს.
 Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ.
 Method რომელიც აძლევს უფლებას Owner-ს წააღებინოს წიგნი თუ ის თავისუფალია.*/

class Library {
    var booksArr: [String]
    var ownersArr: [String]
    
    init(booksArr: [String], ownersArr: [String]) {
        self.booksArr = booksArr
        self.ownersArr = ownersArr
    }
    func addBook(){
        
        
    }
}

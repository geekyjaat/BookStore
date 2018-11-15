//
//  BookStore.swift
//  BookStore
//
//  Created by vikram on 10/20/15.
//  Copyright © 2015 barley. All rights reserved.
//

import Foundation

class BookStore {
    var name = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var logo = ""
    var theBookStore: [Book] = []
    var prefs = UserDefaults.init()
    
    init(){
        var newBook = Book()
        newBook.title = "Swift for Absolute Beginners"
        newBook.author = "Bennett and Lees"
        newBook.description = "iOS Programming made easy."
        theBookStore.append(newBook)
        
        newBook = Book()
        newBook.title = "ABC"
        newBook.author = "ABC"
        newBook.description = "ABC iOS Programming made easy."
        theBookStore.append(newBook)
        
        newBook = Book()
        newBook.title = "DEF Swift for Absolute Beginners"
        newBook.author = "DEF Bennett and Lees"
        newBook.description = "iOS Programming made easy."
        theBookStore.append(newBook)
        
        newBook = Book()
        newBook.title = "GHI Swift for Absolute Beginners"
        newBook.author = "GHI Bennett and Lees"
        newBook.description = "iOS Programming made easy."
        theBookStore.append(newBook)
        
        newBook = Book()
        newBook.title = "TOMATO A Farewell To Arms"
        newBook.author = "Tomato Ernest Hemingway"
        newBook.description = "The story of an affair between an English nurse and an American soldier on the Italian front during World War I."
        theBookStore.append(newBook)
    }
    
    class var sharedInstance: BookStore {
        struct Static {
            static let instance = BookStore()
        }
        return Static.instance
    }
    
    var count:Int {
        return theBookStore.count
    }
    
    func addBook(book:Book) {
        theBookStore.append(book)
    }
    
    func replace(book: Book, atIndex index: Int) {
        theBookStore[index] = book
    }
    
    func removeBook(index:Int) {
        theBookStore.remove(at: index)
    }
    
    func book(index:Int) -> Book{
        return theBookStore[index]
    }
    
    func sort() {
        theBookStore.sort(by: alphabetOrder)
    }
    
    
    // MARK: - Utilities
    
    func alphabetOrder(value1:Book, value2:Book)-> Bool {
        return value1.title < value2.title
    }

}

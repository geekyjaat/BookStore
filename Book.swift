//
//  Book.swift
//  BookStore
//
//  Created by vikram on 10/20/15.
//  Copyright © 2015 barley. All rights reserved.
//

import Foundation

class Book {
    var title:String = ""
    var author = ""
    var description = ""
    var publisher = ""
    var genre = ""
    var yearPublished = ""
    var numberOfPages = ""
    var edition = ""
    var price = ""
    
    init(){
    }
    
    init(title:String, author:String, description:String){
        self.title = title
        self.author = author
        self.description = description
    }
}
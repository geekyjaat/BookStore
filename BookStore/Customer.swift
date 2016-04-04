//
//  Customer.swift
//  BookStore
//
//  Created by vikram on 10/20/15.
//  Copyright © 2015 barley. All rights reserved.
//

import Foundation

class Customer {
    var firstName = ""
    var lastName = ""
    var addressLine1 = ""
    var addressLine2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var emailAddress = ""
    var favoriteGenre = ""
    
    func listPurchaseHistory() -> [String] {
        return ["puchase 1", "purchase2"];
    }
    
}
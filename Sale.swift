//
//  Sale.swift
//  BookStore
//
//  Created by vikram on 10/20/15.
//  Copyright © 2015 barley. All rights reserved.
//

import Foundation

class Sale {
    var customer:Customer?
    var book: Book?
    var date = ""
    var time = ""
    var amount = ""
    var paymentType = ""
    
    func chargeCreditCard(creditCardNumber:String, expiration:String) -> String {
        return "09797097098";
    }
    
    func printInvoice() -> String {
        return "invoice";
    }
    
    func checkOut(){
        print("checkout complete!!");
    }
}
//
//  AddBookViewController.swift
//  BookStore
//
//  Created by vikram on 4/2/16.
//  Copyright © 2016 barley. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController {

    @IBOutlet weak var bookTitle: UITextField!
    @IBOutlet weak var bookAuthor: UITextField!
    @IBOutlet weak var bookDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dismissAndSave" {
            let book = Book(title:bookTitle.text!, author: bookAuthor.text!, description: bookDesc.text!)
            BookStore.sharedInstance.addBook(book)
        }
    }
    
    

//    // MARK: - Navigation
//
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//    }
}

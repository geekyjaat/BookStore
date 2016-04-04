//
//  DismissSegue.swift
//  BookStore
//
//  Created by vikram on 4/2/16.
//  Copyright © 2016 barley. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    
    override func perform() {
        if let controller = sourceViewController.presentingViewController {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
//
//  ViewController.swift
//  EmailValidator
//
//  Created by ccc on 19/04/2018.
//  Copyright © 2018 ccc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func butoni(_ sender: Any) {
        
      let isValid =  isValidEmail(email: email.text)
        
        if isValid{
            print("Email is correct!")
        }
        else{
            print("Email isn't correct!")
        }
    }

    // validate an email for the right format
    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
}


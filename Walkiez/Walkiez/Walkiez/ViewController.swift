//
//  ViewController.swift
//  Walkiez
//
//  Created by Robert Amarin on 3/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Loginmessage: UILabel!
    @IBOutlet var emailtextfield: UITextField!
    @IBOutlet var passwordtextfield: UITextField!
    @IBOutlet var loginbutton: UIButton!
    @IBOutlet var newuserbutton: UIButton!
    
    @IBAction func loginbuttonpressed(_ sender: Any) {
        if let email = emailtextfield.text, let password = passwordtextfield.text {
            if email.isEmpty || !email.contains("@") {
                let errorMessage = "Please enter a valid email address"
                Loginmessage.text = errorMessage
                Loginmessage.sizeToFit()
                return
            }
            if password.isEmpty || password.count < 6 {
                let errorMessage = "Please enter a valid password with at least 6 characters"
                Loginmessage.text = errorMessage
                Loginmessage.sizeToFit()
                print(errorMessage)
                return
            }
            
            // Perform the login action with valid email and password
            // You can replace this with your own login code
            Loginmessage.text = "Logged in as \(email)"
        }
    }
    
    
    
}

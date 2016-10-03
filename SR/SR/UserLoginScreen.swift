//
//  UserLoginScreen.swift
//  SR
//
//  Created by Milind Pathiyal on 10/2/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import UIKit
import Firebase
class UserLoginScreen: UIViewController {

    @IBOutlet weak var usernameBox: UITextField!
    
    @IBOutlet weak var passwordBox: UITextField!
    
    @IBAction func Login(sender: AnyObject) {
        FIRAuth.auth()?.signInWithEmail(usernameBox.text!, password: passwordBox.text!, completion: {
            user, error in
            
            if error != nil{
                
                print("Password/Username is incorrect")
                
            }
            else{
                
                print("User logged in")
                
            }
        })
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

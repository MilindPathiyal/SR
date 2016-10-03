//
//  UserSignUpScreen.swift
//  SR
//
//  Created by Milind Pathiyal on 10/2/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import UIKit
import Firebase
class UserSignUpScreen: UIViewController {
    @IBOutlet weak var usernameBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    
    @IBAction func SignUp(sender: AnyObject) {
        
        FIRAuth.auth()?.createUserWithEmail(usernameBox.text!, password: passwordBox.text!, completion: {
            user, error in
            
            if error != nil{
                
                
            }
            else{
                print("User created")
              
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

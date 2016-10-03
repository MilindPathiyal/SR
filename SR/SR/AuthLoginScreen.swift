//
//  AuthLoginScreen.swift
//  SR
//
//  Created by Milind Pathiyal on 10/2/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import UIKit

class AuthLoginScreen: UIViewController {
    
    @IBOutlet weak var usernameBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    @IBOutlet weak var Login: UIButton!
    var go = true
    
    @IBAction func AuthLogin(sender: AnyObject) {
        if (usernameBox.text == "lg") && (passwordBox.text == "lg") {
            print("Auth Login")
            
            
        }
        else{
            /*
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "login/pass is wrong"
            alert.addButtonWithTitle("Ok")
            alert.show()
            */
            go = false
            print("Auth Failed")
            
            
        }
        
        
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        if let ident = identifier {
            if ident == "login" {
                if go != true {
                    return false
                }
            }
        }
        return true
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

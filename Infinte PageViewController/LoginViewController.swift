//
//  LoginViewController.swift
//  Infinte PageViewController
//
//  Created by Varun Nath on 26/04/17.
//  Copyright © 2017 UnsureProgrammer. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FirebaseAuth
import FirebaseDatabase

class LoginViewController: UIViewController,FBSDKLoginButtonDelegate{

    
    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    var rootRef:FIRDatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()

        //setup the permissions required from facebook
        self.fbLoginButton.readPermissions = ["public_profile","email","user_friends"]
        
        //set the delegate to self
        self.fbLoginButton.delegate = self

    }

    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        print("logged in")
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("logged out")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

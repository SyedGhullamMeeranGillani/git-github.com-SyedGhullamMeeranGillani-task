//
//  ViewController.swift
//  Manaknight
//
//  Created by Syed Meer Gillani on 09/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
 
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ForgotPasswordBtnPressed(_ sender: Any) {
    }
    @IBAction func RegisterBtnPressed(_ sender: Any) {
    }
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        print("Login button is pressed.")
         let login = LoginService()
        guard let email = email.text, email.isNotEmpty,
              let password = password.text, password.isNotEmpty else {
            simplealert(title: "Error", msg: "Please fill out all fields.")
            return }
        
        
        login.login(email: email, password: password)
        
    }
    
}



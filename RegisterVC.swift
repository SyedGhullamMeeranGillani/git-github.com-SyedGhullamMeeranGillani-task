//
//  RegisterVC.swift
//  Manaknight
//
//  Created by Syed Meer Gillani on 09/03/2022.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var first_name: UITextField!
    @IBOutlet weak var last_name: UITextField!
    @IBOutlet weak var code: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func ForgotPasswordBtnPressed(_ sender: Any) {
    }
    @IBAction func LoginBtnPressed(_ sender: Any) {
    }
    @IBAction func RegisterBtnPressed(_ sender: Any) {
        print("register button is pressed.")
         let register = RegisterService()
        guard let email = email.text, email.isNotEmpty,
              let password = password.text, password.isNotEmpty,
              let first_name = first_name.text, first_name.isNotEmpty,
              let last_name = last_name.text, last_name.isNotEmpty,
        let code = code.text , code.isNotEmpty else {
            simplealert(title: "Error", msg: "Please fill out all fields.")
            return }
        
        register.login(email: email, password: password, first_name: first_name, last_name: last_name, code: code)
        
    }
    
}

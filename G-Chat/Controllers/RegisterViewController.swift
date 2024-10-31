//
//  RegisterViewController.swift
//  Flash Chat iOS13
//

import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBAction func registerPressed(_ sender: UIButton) {
       if let email = emailTextfield.text, let password = passwordTextfield.text {
           Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
               if let e = error {
                   print(e.localizedDescription)
                   self.errorLabel.text = e.localizedDescription
               } else {
                   // Navigate to chatViewController
                   self.performSegue(withIdentifier: K.registerSegue, sender: self)
               }
           }
        }

      
    }
    
}

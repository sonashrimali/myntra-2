//
//  login_vc.swift
//  myntra
//
//  Created by Apple 7 on 06/06/24.
//

import UIKit

class login_vc: UIViewController {
    
    @IBOutlet weak var TF_havetrouble: UITextField!
    @IBOutlet weak var TF_forgetyourpassword: UITextField!
    @IBOutlet weak var TF_enterpassword: UITextField!
    
    @IBOutlet weak var TF_username: UITextField!
    @IBOutlet weak var TF_loginyouraccount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func act_resethere(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier:"Reset_VC") as! Reset_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func act_gethelp(_ sender: UIButton) {
        
    }
    
    @IBAction func act_login(_ sender: UIButton) {
        /* print(self.TF_emailormobile.text!)
         print(self.TF_enterpassword.text!)*/
        let username = self.TF_username.text!
        let password = self.TF_enterpassword.text!
        
        guard username.isEmpty == false else {
            
            showAlert(title: "ERROR", message: "please enter the username")
            return
        }
        guard password.isEmpty == false else {
            
            showAlert(title: "ERROR", message: "please enter the valid password")
            return
        }
        
        let storedusername = "sona"
        let storedpassword = "s9664"
        
        guard username == storedusername else {
            showAlert(title: "ERROR", message: "Data do not match")
            return
        }
        guard password == storedpassword else {
            showAlert(title: "ERROR", message: "please enter valid password")
            return
        }
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier:"Home_VC") as! Home_VC
        vc.username = self.TF_username.text!
        vc.password = self.TF_enterpassword.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

/*guard let emailormobile = self.TF_emailormobile.text,
 emailormobile.isEmpty == false else{
 print("email or mobile number is required")
 return
 }
 guard let password = self.TF_enterpassword.text,
 password.isEmpty == false else
 {
 print("password is required")
 return
 
 }
 print("login is successfull")
 }*/


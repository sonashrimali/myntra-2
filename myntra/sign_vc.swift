//
//  sign_vc.swift
//  myntra
//
//  Created by Apple 7 on 06/06/24.
//

import UIKit

class sign_vc: UIViewController {
    
    @IBOutlet weak var TF_havetroule: UITextField!
    @IBOutlet weak var TF_and: UITextField!
    @IBOutlet weak var TF_bycontinuning: UITextField!
    

    @IBOutlet weak var mobilenumber: UITextField!
    @IBOutlet weak var TF_signin: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func act_privacypolicy(_ sender: UIButton) {
    }
    @IBAction func act_termsofcondition(_ sender: UIButton) {
       
        let vc = self.storyboard?.instantiateViewController(withIdentifier:"Termsofuse_VC") as! Termsofuse_VC
        self.navigationController?.pushViewController(vc, animated: true)
       }
        
    
    
    @IBAction func act_gethelp(_ sender: UIButton) {
    }
    @IBAction func act_continue(_ sender: UIButton) {
        //print(TF_91.text ?? "")
        //print("mobile number:-",self.TF_91.text ?? "")
        
        let mobilenumber = self.mobilenumber.text!
        
        guard mobilenumber.isEmpty == false else {
            showAlert(title: "Error", message: "please Enter valid mobile number")
            return
        }
        let storedmobilenumber = "9664218922"
        
        guard mobilenumber == storedmobilenumber else {
            showAlert(title: "Error", message: "number did not match")
            return
        }
        
        print("signup is successfull")
        }
        
        
        func showAlert(title: String, message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    
}

    

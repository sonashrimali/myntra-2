//
//  reset_VC.swift
//  myntra
//
//  Created by Apple 7 on 07/06/24.
//

import UIKit

class Reset_VC: UIViewController {

    @IBOutlet weak var EmailorMobileNumber: UITextField!
    @IBOutlet weak var resetPassword: UILabel!
    @IBOutlet weak var myntra: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func act_goback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func act_Sendlink(_ sender: Any) {
        guard let emailOrMobileNumber = self.EmailorMobileNumber.text, !emailOrMobileNumber.isEmpty else {
            print("Email or Mobile Number is required")
            return
        }
        // Code to send reset link or perform reset
        
        print("Successfully reset your details")
    }
}

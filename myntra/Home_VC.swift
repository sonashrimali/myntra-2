//
//  Home_VC.swift
//  myntra
//
//  Created by Apple 7 on 08/06/24.
//

import UIKit

class Home_VC: UIViewController {
    var username = String()
    var password = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lbl_username.text = "Enter username:- \(username)"
        self.lbl_password.text = "Enter password:- \(password)"
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lbl_password: UILabel!
    @IBOutlet weak var lbl_username: UILabel!
    @IBOutlet weak var lbl_home: UILabel!
    
    @IBAction func act_goback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    func updateSearchResult(for searchController: UISearchController){
}
}



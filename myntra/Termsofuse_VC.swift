//
//  Termsofuse_VC.swift
//  myntra
//
//  Created by APPLE SERVER on 12/06/24.
//

import UIKit

class Termsofuse_VC: UIViewController {

    @IBOutlet weak var condition: UILabel!
    @IBOutlet weak var Termsofuse: UITextField!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func Goback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func updateSearchResult(for searchController: UISearchController){
}
    
}

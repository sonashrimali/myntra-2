//
//  ViewController.swift
//  Myntra
//
//  Created by FCP 29 on 12/06/24.
//

import UIKit

class BagVC: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var Blackview: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.tableview.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        
    }

    
    @IBAction func Btn_Address(_ sender: UIButton) {
        let add = self.storyboard?.instantiateViewController(identifier: "DeliveryAddress") as! DeliveryAddress
        self.navigationController?.pushViewController(add, animated: true)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

extension BagVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
           
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
            
        return cell
        }
        else {
        let cell2 = self.tableview.dequeueReusableCell(withIdentifier: "TableViewCell2") as! TableViewCell2
                
        return cell2
        }
    }

            
        }
    


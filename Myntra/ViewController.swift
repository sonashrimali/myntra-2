//
//  ViewController.swift
//  Myntra
//
//  Created by FCP23 on 12/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    let imgArr = [UIImage (named: "dmo"), UIImage(named: "dmo"), UIImage(named: "dmo")]
    let prdctnameArr = ["shorts", "jeans", "shoes"]
    let prdctclassArr = ["Mens cloth", "Mens cloth", "Mens wearing"]
    let prdctsizeArr = ["36", "24", "10"]
    let prdctreturnavArr = ["no return", "return", "return"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
       }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.Img_TVC.image = self.imgArr[indexPath.row]
        cell.PN_TVC.text = self.prdctnameArr[indexPath.row]
        cell.Ptype_TVC.text = self.prdctclassArr[indexPath.row]
        cell.Size_TVC.text = self.prdctsizeArr[indexPath.row]
        cell.EW_TVC.text = self.prdctreturnavArr[indexPath.row]
        return cell
    }
    
}

    


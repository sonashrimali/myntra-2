//
//  TableViewCell.swift
//  Myntra
//
//  Created by FCP 29 on 12/06/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var view_tbcell: UIView!
    
    @IBOutlet weak var Productimg_tbcell: UIImageView!
    
    @IBOutlet weak var Productname_tbcell: UILabel!
    
    @IBOutlet weak var Desc_tbcell: UILabel!
    
    @IBOutlet weak var sellername_tbcell: UILabel!
    
    @IBOutlet weak var price_tbcell: UILabel!
    
    @IBOutlet weak var return_tbcell: UILabel!
    
    @IBOutlet weak var quantity: UILabel!
    
    @IBOutlet weak var addquantity_tbcell: UIButton!
    
    @IBOutlet weak var lessquantity_tbcell: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view_tbcell.layer.borderWidth = 1.0
        view_tbcell.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

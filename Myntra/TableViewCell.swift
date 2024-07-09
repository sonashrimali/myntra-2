//
//  TableViewCell.swift
//  Myntra
//
//  Created by FCP23 on 22/06/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var view_TVC: UIView!
    
    @IBOutlet weak var Img_TVC: UIImageView!
    
    @IBOutlet weak var PN_TVC: UILabel!
    
    @IBOutlet weak var Ptype_TVC: UILabel!
    
    @IBOutlet weak var Size_TVC: UILabel!
    
    @IBOutlet weak var EW_TVC: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.view_TVC.layer.borderColor = UIColor.lightGray.cgColor
        self.view_TVC.layer.borderWidth = 0.5
        self.view_TVC.layer.cornerRadius = 5
        self.view_TVC.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

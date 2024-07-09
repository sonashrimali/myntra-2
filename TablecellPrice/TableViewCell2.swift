//
//  TableViewCell2.swift
//  Myntra
//
//  Created by FCP 29 on 14/06/24.
//

import UIKit

class TableViewCell2: UITableViewCell {
    
    
    @IBOutlet weak var View_tbcell2: UIView!
    
    @IBOutlet weak var Pricedetails_tbcell: UILabel!
    
    @IBOutlet weak var MRP_tbcell: UILabel!
    
    @IBOutlet weak var Discount_Discount: UILabel!
    
    @IBOutlet weak var PlatformFee_tbcell: UILabel!
    
    @IBOutlet weak var ShippingFee_tbcell: UILabel!
    
    @IBOutlet weak var Total_tbcell: UILabel!
    
    @IBOutlet weak var MRPamount_tbcell: UILabel!
    
    @IBOutlet weak var Discountamount_tbcell: UILabel!
    
    @IBOutlet weak var PFeeamount_tbcell: UILabel!
    
    @IBOutlet weak var SFee_tbcell: UILabel!
    
    @IBOutlet weak var totalamount_tbcell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        View_tbcell2.layer.borderWidth = 1.0
        View_tbcell2.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

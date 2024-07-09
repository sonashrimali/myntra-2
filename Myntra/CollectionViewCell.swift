//
//  CollectionViewCell.swift
//  Myntra
//
//  Created by FCP23 on 26/06/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view_CVC: UIView!
    
    @IBOutlet weak var img_CVC: UIImageView!
    
    @IBOutlet weak var pb_CVC: UILabel!
    
    @IBOutlet weak var price_CVC: UILabel!
    
    
    @IBOutlet weak var mtb_CVC: CustomButton1!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
     self.view_CVC.layer.borderColor = UIColor.lightGray.cgColor
     self.view_CVC.layer.borderWidth = 0.5
     self.view_CVC.layer.cornerRadius = 5
     self.view_CVC.layer.masksToBounds = true
        
    }

}

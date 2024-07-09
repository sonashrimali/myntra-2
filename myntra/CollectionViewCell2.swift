//
//  CollectionViewCell.swift
//  myntra
//
//  Created by FCP26 on 27/06/24.
//

import UIKit

class CollectionViewCell2 : UICollectionViewCell {
    @IBOutlet weak var iamge_cv: UIImageView!
    @IBOutlet weak var cart_bt: UIButton!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var lbl_nm: UILabel!
    @IBOutlet weak var add_cart: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.black.cgColor
    }

      }
    
    
    


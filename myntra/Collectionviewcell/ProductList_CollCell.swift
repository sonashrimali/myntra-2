//
//  ProductList_CollCell.swift
//  myntra
//
//  Created by FCP26 on 02/07/24.
//
import UIKit

class ProductList_CollCell: UICollectionViewCell {

    @IBOutlet weak var product_nam: UILabel!
    @IBOutlet weak var product_image_cell: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var cart_cv: UIButton!
    @IBOutlet weak var product_price: UILabel!
    @IBOutlet weak var add_cart: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.black.cgColor
        
        
        
    }
     
      
        }
        
    
    
    


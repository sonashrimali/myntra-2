//
//  Squaredsearchbar.swift
//  Myntra
//
//  Created by FCP23 on 12/06/24.
//

import UIKit

class Squaredsearchbar: UISearchBar {

    override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setup()
        }
        
        private func setup() {
            // Customize the search bar appearance
            self.barStyle = .default
            self.tintColor = UIColor.black // Change the color of the cursor and the search bar icon
            self.layer.cornerRadius = 1 // Set corner radius for rectangular shape
            self.layer.borderWidth = 1 // Set border width
            self.layer.borderColor = UIColor.gray.cgColor // Set border color
    }

}

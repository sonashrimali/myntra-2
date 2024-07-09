//
//  CustomButton.swift
//  Myntra
//
//  Created by FCP23 on 26/06/24.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
            super.init(frame: frame)
            setupButton()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setupButton()
        }
        
        private func setupButton() {
            setTitleColor(.systemRed, for: .normal)
            backgroundColor = .clear
            layer.cornerRadius = 8.0 // Adjust the corner radius as needed for rounded corners
            layer.borderWidth = 2.0 // Adjust the border width as needed
            layer.borderColor = UIColor.systemRed.cgColor // Set the border color to system red
        }
        
        // Optionally, override layoutSubviews to adjust the button appearance during layout changes
        override func layoutSubviews() {
            super.layoutSubviews()
            // Additional layout adjustments if necessary
        }
}

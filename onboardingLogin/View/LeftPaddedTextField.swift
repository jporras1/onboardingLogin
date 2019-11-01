//
//  LeftPaddedTextField.swift
//  onboardingLogin
//
//  Created by Javier Porras jr on 10/31/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class LeftPaddedTextField: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
}

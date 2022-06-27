//
//  UIView+Extensions.swift
//  Yummie
//
//  Created by Le Tong Minh Hieu on 26/06/2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

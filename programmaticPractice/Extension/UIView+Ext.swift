//
//  UIView+ext.swift
//  programmaticPractice
//
//  Created by aycan duskun on 9.03.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}

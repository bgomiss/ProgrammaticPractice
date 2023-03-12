//
//  UITableView+ext.swift
//  programmaticPractice
//
//  Created by aycan duskun on 11.03.2023.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
}

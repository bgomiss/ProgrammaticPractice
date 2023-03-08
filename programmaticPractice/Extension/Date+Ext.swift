//
//  Date+Ext.swift
//  programmaticPractice
//
//  Created by aycan duskun on 4.03.2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MMM yyyy"
        return dateformatter.string(from: self)
    }
}

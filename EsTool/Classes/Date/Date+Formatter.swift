//
//  Date+Formatter.swift
//  EsTool
//
//  Created by yuanl on 2024/5/15.
//

import Foundation

public extension Date {
    func toString(_ pattern: DateFormatterType, _ timeZone: TimeZone? = nil) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = pattern.formatterPattern
        if let timeZone = timeZone {
            formatter.timeZone = timeZone
        }
        return formatter.string(from: self)
    }
}

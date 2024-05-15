//
//  String+Validation.swift
//  ETool
//
//  Created by yuanl on 2024/5/14.
//

import Foundation

public extension String {
    // is Empty
    func isEmpty() -> Bool {
        return self.isEmpty
    }

    // is Not Empty
    func isNotEmpty() -> Bool {
        return !isEmpty()
    }

    // is Blank
    func isBlank() -> Bool {
        return self.trimmingCharacters(in: .whitespaces).isEmpty
    }

    // is Not Blank
    func isNotBlank() -> Bool {
        return !isBlank()
    }

    // trim
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
}

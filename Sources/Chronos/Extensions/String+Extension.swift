//
//  String+Extension.swift
//  
//
//  Created by Chris Scalcucci on 12/12/22.
//

import Foundation

public extension String {

    @inlinable
    func toDate(_ format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self)
    }
}

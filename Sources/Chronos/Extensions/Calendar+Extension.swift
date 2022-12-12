//
//  Calendar+Extension.swift
//  
//
//  Created by Chris Scalcucci on 12/12/22.
//

import Foundation

public extension Calendar {

    @inlinable
    func numberOfDaysBetween(_ from: Date, _ to: Date) -> Int {
        return dateComponents([.day],
                              from: startOfDay(for: from),
                              to: startOfDay(for: to)).day!
    }
}

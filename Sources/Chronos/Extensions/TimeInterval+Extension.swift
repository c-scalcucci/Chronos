//
//  TimeInterval+Extension.swift
//  
//
//  Created by Chris Scalcucci on 12/12/22.
//

import Foundation

public extension TimeInterval {
    @inlinable
    static func minutes(_ minutes: Double) -> TimeInterval {
        return minutes.seconds(from: .minutes)
    }

    @inlinable
    static func hours(_ hours: Double) -> TimeInterval {
        return hours.seconds(from: .hours)
    }

    @inlinable
    static func days(_ days: Double) -> TimeInterval {
        return days.seconds(from: .days)
    }
}

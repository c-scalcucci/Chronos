//
//  Date+Extension.swift
//  
//
//  Created by Chris Scalcucci on 12/12/22.
//

import Foundation

public extension Date {
    /// Returns the current time in milliseconds from target date.
    /// Default is 1970.
    ///
    /// - parameter since: Date to pull milliseconds from
    /// - returns: Time in milliseconds from target date.
    @inlinable
    static func currentTimeMillis(_ since: Date? = nil) -> Int64 {
        return (since != nil) ?
        Int64(Date().timeIntervalSince(since!) * 1000) :
        Date.currentSystemTimeMillis()
    }

    /// Returns the current time in milliseconds from target date.
    /// Default is 1970.
    ///
    /// - parameter since: Date to pull milliseconds from
    /// - returns: Time in milliseconds from target date.
    @inlinable
    func currentTimeMillis(_ since: Date? = nil) -> Int64 {
        return Date.currentTimeMillis(since)
    }

    @inlinable
    static func currentSystemTimeMillis() -> Int64 {
        var darwinTime : timeval = timeval(tv_sec: 0, tv_usec: 0)
        gettimeofday(&darwinTime, nil)
        return (Int64(darwinTime.tv_sec) * 1000) + Int64(darwinTime.tv_usec / 1000)
    }
}

public extension Date {
    
    @inlinable
    func toString(_ format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}





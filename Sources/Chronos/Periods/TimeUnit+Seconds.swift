//
//  TimeUnit+Seconds.swift
//
//  Created by Chris Scalcucci on 4/20/20.
//

import Foundation

// =============================
// MARK: Seconds
// =============================

/**
    Converts seconds to nanoseconds.

    - parameter s: Time in seconds
    - returns: Time in nanoseconds
 */
@inlinable
public func s2ns(_ s: Double) -> Double {
    return s * 1_000_000_000
}

/**
    Converts seconds to microseconds.

    - parameter s: Time in seconds
    - returns: Time in microseconds
 */
@inlinable
public func s2us(_ s: Double) -> Double {
    return s * 1_000_000
}

/**
    Converts seconds to milliseconds.

    - parameter s: Time in seconds
    - returns: Time in milliseconds
 */
@inlinable
public func s2ms(_ s: Double) -> Double {
    return s * 1_000
}

/**
   Converts seconds to minutes.

   - parameter s: Time in seconds
   - returns: Time in minutes
*/
@inlinable
public func s2min(_ s: Double) -> Double {
    return s / 60
}

/**
    Converts seconds to hours.

    - parameter s: Time in seconds
    - returns: Time in hours
 */
@inlinable
public func s2hr(_ s: Double) -> Double {
    return s / 3_600
}

/**
    Converts seconds to days.

    - parameter s: Time in seconds
    - returns: Time in days
 */
@inlinable
public func s2d(_ s: Double) -> Double {
    return s / 86_400
}


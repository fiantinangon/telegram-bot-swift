//
// Argument.swift
//
// Copyright (c) 2015 Andrey Fidrya
//
// Licensed under the MIT license. For full copyright and license information,
// please see the LICENSE file.
//

import Foundation

public struct /*NS*/Argument {
    public let value: Any?

    public var stringValue: String {
        guard let v = value as? String else { fatalError() }
        return v
    }

    public var stringArrayValue: [String] {
        guard let v = value as? [String] else { fatalError() }
        return v
    }
    
    public var intValue: Int {
        guard let v = value as? Int else { fatalError() }
        return v
    }
    
    public var intArrayValue: [Int] {
        guard let v = value as? [Int] else { fatalError() }
        return v
    }

    public var doubleValue: Double {
        guard let v = value as? Double else { fatalError() }
        return v
    }
    
    public var doubleArrayValue: [Double] {
        guard let v = value as? [Double] else { fatalError() }
        return v
    }
    
    init(value: Any?) {
        self.value = value
    }
}
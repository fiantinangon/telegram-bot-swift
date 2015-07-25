//
// String+HTTP.swift
//
// Copyright (c) 2015 Andrey Fidrya
//
// Licensed under the MIT license. For full copyright and license information,
// please see the LICENSE file.
//

import Foundation

extension String {
    struct HTTPData {
        static let formUrlencodedAllowedCharacters: NSMutableCharacterSet = {
            let cs = NSMutableCharacterSet.alphanumericCharacterSet()
            cs.addCharactersInString("-._* ")
            return cs
        }()
        
        static let urlQueryAllowedCharacters: NSMutableCharacterSet = {
            let cs = NSMutableCharacterSet.alphanumericCharacterSet()
            cs.addCharactersInString("-._~")
            return cs
        }()
    }
    
    /// Replaces spaces with `'+'`, percent-encodes everything
    /// else except alphanumerics and `'-._*'`
    ///
    /// Should be used for encoding parameter values when
    /// using `application/x-www-form-urlencoded` Content-Type.
    ///
    /// - SeeAlso: `func urlQueryEncode() -> String`
    /// - Returns: Encoded string
    func formUrlencode() -> String {
        return stringByAddingPercentEncodingWithAllowedCharacters(HTTPData.formUrlencodedAllowedCharacters)?.stringByReplacingOccurrencesOfString(" ", withString: "+") ?? ""
    }
    
    /// Percent-encodes everything except alphanumerics
    /// and `'-._~'`.
    ///
    /// Should be used for encoding URL query components.
    ///
    /// - Returns: Encoded string
    /// - SeeAlso: `func formUrlencode() -> String`
    func urlQueryEncode() -> String {
        return stringByAddingPercentEncodingWithAllowedCharacters(HTTPData.urlQueryAllowedCharacters) ?? ""
    }
}

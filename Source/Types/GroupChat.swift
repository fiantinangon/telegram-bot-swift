//
// GroupChat.swift
//
// Copyright (c) 2015 Andrey Fidrya
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import SwiftyJSON

/// Represents a group chat.
public class GroupChat {
    
    /// Unique identifier for this group chat
    public var id: Int
    
    /// Group name
    public var title: String
    
    /// Create an empty instance.
    public init() {
        id = 0
        title = ""
    }
    
    /// Create an instance from JSON data.
    ///
    /// Will return nil if `json` is empty or invalid.
    public convenience init?(json: JSON) {
        self.init()
        
        if json.isNullOrUnknown { return nil }
        
        guard let id = json["id"].int else { return nil }
        self.id = id
        
        guard let title = json["title"].string else { return nil }
        self.title = title
    }
}

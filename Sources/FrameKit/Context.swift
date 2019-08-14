//
//  Context.swift
//  FrameKit
//
//  Created by Vitor Silva on 13/08/19.
//

import Foundation

public protocol Context {
    associatedtype OfType
    var details: OfType { get }
}

extension Array: Context where Array.Element: Context{
    public var details: [Array.Element] {
        return self
    }
    
    public typealias OfType = [Array.Element]
}

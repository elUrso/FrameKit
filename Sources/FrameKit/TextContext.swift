//
//  TextContext.swift
//  FrameKit
//
//  Created by Vitor Silva on 14/08/19.
//

import Foundation

public struct TextContext: Context {
    public typealias OfType = String
    public var details: String {
        get { return content }
    }
    let content: String
}

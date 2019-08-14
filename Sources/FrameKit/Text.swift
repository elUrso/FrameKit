//
//  Text.swift
//  FrameKit
//
//  Created by Vitor Silva on 13/08/19.
//

import Foundation

public struct Text: Frame {
    let str: String
    
    public init(_ str: String) {
        self.str = str
    }
    
    public func display() -> HTMLDocument {
        return HTMLDocument(fake: str)
    }
}

//
//  Meta.swift
//  FrameKit
//
//  Created by Vitor Silva on 06/11/19.
//

import Foundation

public struct Meta: Frame {
    let tag: [String: String]
    
    public func synthesize() -> HTMLElement {
        return HTMLElement(tag: "meta", selfClosing: true, meta: tag, inner: [])
    }
    
    public init(name: String, value: String) {
        tag = [name: value]
    }
}

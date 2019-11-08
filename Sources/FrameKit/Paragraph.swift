//
//  Paragraph.swift
//  FrameKit
//
//  Created by Vitor Silva on 01/11/19.
//

import Foundation

public struct Paragraph: Frame {
    let content: [HTMLElementContent]
    
    public func synthesize() -> HTMLElement {
        return HTMLElement(tag: "p", selfClosing: false, meta: [:], inner: content)
    }
    
    public init(_ str: String) {
        content = [.content(str)]
    }
    
    public init(@ListBuilder<Frame> _ closure: () -> [Frame]) {
        content = closure().innerSynthesize()
    }
}

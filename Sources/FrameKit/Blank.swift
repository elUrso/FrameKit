//
//  Blank.swift
//  FrameKit
//
//  Created by Vitor Silva on 13/08/19.
//

import Foundation

public struct Blank: Frame, Parent {
    public var children: [Frame] = [Frame]()
    
    public func display() -> HTMLDocument {
        return HTMLDocument(inner: children.map{$0.display()}, name: "html", style: [CSSRule]())
    }
}

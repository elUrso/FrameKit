//
//  HTMLDocument.swift
//  FrameKit
//
//  Created by Vitor Silva on 14/08/19.
//

import Foundation

// It will need extensions to support CSSRules, but the draft is not ready yet

public struct HTMLDocument {
    var inner: [HTMLDocument]
    var name: String
    var single: Bool = false
    var style: [CSSRule] = [CSSRule]()
    let fake: Bool
    
    init(fake: String) {
        inner = [HTMLDocument]()
        name = fake
        self.fake = true
    }
    init(inner: [HTMLDocument], name: String, style: [CSSRule]) {
        self.inner = inner
        self.name = name
        self.single = false
        self.style = style
        self.fake = false
    }
    func render() -> String {
        if fake { return name }
        return single ? "<\(name)/>":"<\(name)>\(inner.map{$0.render()}.joined())</\(name)>"
    }
}

//
//  HTMLElement.swift
//  
//
//  Created by Vitor Silva on 01/11/19.
//

import Foundation

public struct HTMLElement {
    let tag: String
    let selfClosing: Bool
    let meta: [String: String]
    let inner: [HTMLElementContent]
    
    func with(_ element: HTMLElement) -> HTMLElement {
        var inner = self.inner
        inner.append(.element(element))
        return HTMLElement(tag: tag, selfClosing: selfClosing, meta: meta, inner: inner)
    }
    
    public func render() -> String {
        switch selfClosing {
        case false:
            return "<\(tag.htmlEscaped) \(meta.render())>\(inner.render())</\(tag.htmlEscaped)>"
        case true:
            return "<\(tag.htmlEscaped) \(meta.render())/>"
        }
    }
}

public enum HTMLElementContent {
    case element(HTMLElement)
    case content(String)
}

extension Dictionary where Key == String, Value == String {
    func render() -> String {
        var string = ""
        for (key, value) in self {
            string.append(" \"\(key.htmlEscaped)\"=\"\(value.htmlEscaped)\"")
        }
        
        return string
    }
}

extension Array where Element == HTMLElementContent {
    func render() -> String {
        var string = ""
        for element in self {
            switch element {
            case .element(let innerElement):
                string.append(innerElement.render())
            case .content(let content):
                string.append(content.htmlEscaped)
            }
        }
        
        return string
    }
}

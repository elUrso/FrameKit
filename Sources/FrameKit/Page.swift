//
//  Page.swift
//  
//
//  Created by Vitor Silva on 30/10/19.
//

import Foundation

public struct Page: Frame {
    let head: HTMLHead
    let body: HTMLBody
    
    public func synthesize() -> HTMLElement {
        return HTMLElement(tag: "html", selfClosing: false, meta: [:], inner: [.element(head.synthesize()), .element(body.synthesize())])
    }
    
    public init(@PageBuilder _ closure: () -> (HTMLHead, HTMLBody)) {
        let (head, body) = closure()
        self.head = head
        self.body = body
    }
}

@_functionBuilder
public class PageBuilder {
    public static func buildBlock(_ expression: Frame...) -> (HTMLHead, HTMLBody) {
        if expression.count == 2, let head = expression[0] as? HTMLHead, let body = expression[1] as? HTMLBody {
            return (head, body)
        }
        
        fatalError("Invalid return value, must return a HTMLHead and a HTMLBody")
    }
}

public struct HTMLHead: Frame {
    let inner: [Representable]
    
    public func synthesize() -> HTMLElement {
        return HTMLElement(tag: "head", selfClosing: false, meta: [:], inner: inner.innerRepresent())
    }
    
    public init(@ListBuilder<Representable> _ closure: () -> [Representable]) {
        inner = closure()
    }
    
    
    public init(_ closure: () -> Representable) {
        inner = [closure()]
    }
    
    public init() {
        inner = []
    }
}

public struct HTMLBody: Frame {
    let inner: [Representable]
    
    public func synthesize() -> HTMLElement {
        return HTMLElement(tag: "body", selfClosing: false, meta: [:], inner: inner.innerRepresent())
    }
    
    public init(@ListBuilder<Representable> _ closure: () -> [Representable]) {
        inner = closure()
    }
    
    public init(_ closure: () -> Representable) {
        inner = [closure()]
    }
    
    public init() {
        inner = []
    }
}

public typealias Head = HTMLHead
public typealias Body = HTMLBody

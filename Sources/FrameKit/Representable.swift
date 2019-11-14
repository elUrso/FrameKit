//
//  Representable.swift
//  FrameKit
//
//  Created by Vitor Silva on 07/11/19.
//

public protocol Representable {
    func represent() -> HTMLElementContent
}

extension Array where Element == Representable {
    func innerRepresent() -> [HTMLElementContent] {
        return self.map{$0.represent()}
    }
}

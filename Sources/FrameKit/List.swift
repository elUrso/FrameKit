//
//  List.swift
//  FrameKit
//
//  Created by Vitor Silva on 14/08/19.
//

import Foundation

public struct List<T>: Frame where T: Frame {
    let elements: [T]
    public func display() -> HTMLDocument {
        return HTMLDocument(inner: elements.map{$0.display()}, name: "div", style: [CSSRule]())
    }
}

public struct AbstractList<T>: Stateful where T: Stateful {
    public static func synthesise(from: [T.State]) -> List<T.Result> {
        return List<T.Result>(elements: from.map{ T.synthesise(from: $0) })
    }
    
    public typealias State = [T.State]
    
    public typealias Result = List<T.Result>

}

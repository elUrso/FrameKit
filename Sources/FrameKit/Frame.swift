//
//  Frame.swift
//  FrameKit
//
//  Created by Vitor Silva on 13/08/19.
//

import Foundation

public protocol Frame {
    func display() -> HTMLDocument
}

public protocol Parent {
    var children: [Frame] { get }
}

public protocol Stateful {
    associatedtype State: Context
    associatedtype Result: Frame
    static func synthesise(from: State) -> Result
}

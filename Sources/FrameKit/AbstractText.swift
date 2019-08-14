//
//  AbstractText.swift
//  FrameKit
//
//  Created by Vitor Silva on 14/08/19.
//

import Foundation

public struct AbstractText: Stateful {
    public static func synthesise(from context: TextContext) -> Text {
        return Text(context.details)
    }
}

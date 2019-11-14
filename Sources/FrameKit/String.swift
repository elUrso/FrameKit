//
//  String.swift
//  FrameKit
//
//  Created by Vitor Silva on 07/11/19.
//

extension String: Representable {
    public func represent() -> HTMLElementContent {
        return .content(self.htmlEscaped)
    }
}

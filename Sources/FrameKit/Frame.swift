//
//  Frame.swift
//  
//
//  Created by Vitor Silva on 01/11/19.
//

import Foundation

public protocol Frame {
    func synthesize() -> HTMLElement
}

extension Array where Element == Frame {
    func innerSynthesize() -> [HTMLElement] {
        return self.map{$0.synthesize()}
    }
}

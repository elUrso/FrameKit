//
//  ListBuilder.swift
//  
//
//  Created by Vitor Silva on 01/11/19.
//

import Foundation

@_functionBuilder
public class ListBuilder<T> {
    public static func buildBlock(_ expression: T...) -> [T] {
        return expression
    }
}

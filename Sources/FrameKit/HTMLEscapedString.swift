//
//  HTMLEscapedString.swift
//  
//
//  Created by Vitor Silva on 01/11/19.
//

import Foundation

// TODO: Implement this thing correctly!

extension String {
    func escaped(using escaper: Escaper) -> String {
        return escaper.escape(self)
    }
    
    func unescaped(using escaper: Escaper) -> String {
        return escaper.unescape(self)
    }
    
    var htmlEscaped: String {
        get {
            return self.escaped(using: HTMLStringEscaper)
        }
    }
    
    var htmlUnescaped: String {
        get {
            return self.unescaped(using: HTMLStringEscaper)
        }
    }
}

protocol Escaper {
    func escape(_ from: String) -> String
    func unescape(_ from: String) -> String
}

struct DummyEscaper: Escaper {
    func escape(_ source: String) -> String {
        return source
    }
    
    func unescape(_ source: String) -> String {
        return source
    }
}

let HTMLStringEscaper = DummyEscaper()

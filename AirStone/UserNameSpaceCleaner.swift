//
//  UserNameSpaceCleaner.swift
//  AirStone
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import Foundation

public func cleanRedundantSpace(in name: String) -> String {
    var newName = name
    
    // removing front spaces
    while newName.hasPrefix(" ") {
        newName.removeFirst()
    }
    
    // removing trailing spaces
    while newName.hasSuffix(" ") {
        newName.removeLast()
    }
    
    return newName
}

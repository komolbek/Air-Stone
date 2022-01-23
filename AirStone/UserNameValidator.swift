//
//  UserNameValidator.swift
//  AirStone
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import Foundation

fileprivate enum NotAllowed: String {
    case symbols = "!@#$%^&*()_=+-№;:?"
    case numbers = "1234567890"
}

public func checkIfValidName(_ name: String) -> Bool {
    for letter in name {
        if NotAllowed.symbols.rawValue.contains(letter) ||
            NotAllowed.numbers.rawValue.contains(letter) {
            return false
        }
    }
    
    return true
}

public func checkIfValidNameCount(_ name: String) -> Bool {
    var firstName: String = ""
    
    if name.contains(" ") {
        for letter in name {
            if letter == " " {
                break
            } else {
                firstName.append(letter)
            }
        }
    } else {
        firstName = name
    }
    
    return firstName.count >= 3 ? true : false
}

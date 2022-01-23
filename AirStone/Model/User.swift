//
//  User.swift
//  AirStone
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import Foundation

public struct User {
    
    // Internal variables
    private var _name: String
    private var _avatar: String
    private var _budget: Budget?
    
    // Public property getters
    public var name: String { _name }
    public var avatar: String { _avatar }
    public var budget: Budget? { _budget }
    
    // Notifications for Presenter layer about User model changes
    public var onNameChange: ((CustomResult) -> ())?
    public var onAvatarChange: ((CustomResult) -> ())?
    
    public init(name: String, avatar: String = "") {
        _name = name
        _avatar = avatar
    }
    
    public mutating func add(_ budget: Budget) {
        _budget = budget
    }
    
    /// Changes the value of name attribute of User object. User can not have numbers or sybmols as a name.
    /// - Parameter name: real name of the User
    public mutating func change(name: String) {
        if checkIfValidName(name) {
            let spacelessName = cleanRedundantSpace(in: name)
            
            if checkIfValidNameCount(spacelessName) {
                _name = spacelessName
            } else {
                onNameChange?(.error(.notEnoughLengthOfName))
            }
        } else {
            onNameChange?(.error(.symbolsAndNumbersInName))
        }
        
        onNameChange?(.success)
    }
    
    public mutating func change(avatar: String) {
        _avatar = avatar
    }
    
    public mutating func add(avatar: String) {
        change(avatar: avatar)
    }
}

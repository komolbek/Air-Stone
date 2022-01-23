//
//  Budget.swift
//  AirStone
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import Foundation

public struct Budget {
    
    // MARK: - Attributes
    
    private var currentMoney: Int
    
    private var incomes: [Income] = []
    private var expenses: [Expense] = []
    private var savings: [Saving] = []
    
    // MARK: - Constructor
    
    public init(money: Int = 0) {
        self.currentMoney = money
    }
    
    // MARK: - Operations
    
    public func add(income: Income) {
        
    }
    
    public func remove(income: Income) {
        
    }
    
    public func add(expense: Expense) {
        
    }
    
    public func remove(income: Expense) {
        
    }
    
    public func add(saving: Saving) {
        
    }
    
    public func remove(income: Saving) {
        
    }
}

extension Budget : Equatable {
    
    public static func == (lhs: Budget, rhs: Budget) -> Bool {
        return lhs.currentMoney == rhs.currentMoney
        && lhs.expenses == rhs.expenses
        && lhs.incomes == rhs.incomes
        && lhs.savings == rhs.savings
    }
}

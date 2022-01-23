//
//  UserTests.swift
//  AirStoneTests
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import XCTest
import AirStone

public var testName: String = "Kamol"
public var testName2: String = "Akbar"
public var testName3: String = "123 Ki"
public var testName4: String = "Kamol$"
public var testName5: String = "Kamol  "
public var testName6: String = "  Kamol "
public var testName7: String = "Ka mol"
public var testName8: String = "Kam ol"

final class UserTests: XCTestCase {
    
    private var user = User(name: testName)
    
    func testAddBudget() {
        XCTAssertNotNil(user, "User object is supposed to be initialise, but it is not")
        XCTAssertNil(user.budget, "User budget is supposed to be nil, but is not")
        
        let budget = Budget()
        
        user.add(budget)
        
        XCTAssertNotNil(user.budget, "User is supposed to have Budget object, but it has not")
        XCTAssertEqual(user.budget, budget, "User budget object is not equal to the new assigned budget object")
    }
    
    func testChangeName() {
        XCTAssertNotNil(user, "User object is supposed to be initialise, but it is not")
        XCTAssertEqual(user.name, testName)
        
        // test 1 // 2 from testName to testName2
        user.change(name: testName2)
        
        XCTAssertEqual(user.name, testName2, "User object name had to be changed from \(testName2) to \(testName2), but it remained as \(testName)")
        
        // test 2 // 2 from testName to testName3
        user.change(name: testName3)
        
        XCTAssertNotEqual(user.name, testName3, "User object name must have old value of \(testName) because \(testName3) is not valid name, nevertheless it changed to not valid name")
        
        // test 3 from testName2 to testName4
        user.change(name: testName4)
        
        XCTAssertEqual(user.name, testName2, "User object name must have old value: \(testName2), but it falsely changed to not valid: \(testName4)")
        
        // test 4 from testName2 to testName5 = "Kamol  " to cleaned value "Kamol"
        user.change(name: testName5)
        
        XCTAssertEqual(user.name, "Kamol", "User name must have new value: Kamol, but it could clean redundant spaces from: `\(testName5)`")
        
        // test 5 from testName2 to testName5 = "  Kamol " to cleaned value "Kamol"
        user.change(name: testName6)
        
        XCTAssertEqual(user.name, "Kamol", "User name must have new value: Kamol, but it could clean redundant spaces from: `\(testName6)`")
        
        // test 6 from testName2 to testName5 = "Ka mol" to cleaned value "Kamol"
        user.change(name: testName7)
        
        XCTAssertEqual(user.name, "Kamol", "User name must have old value: Kamol, but it changed to wrong: `\(testName7)`")
        
        // test 6 from testName2 to testName5 = "Ka mol" to cleaned value "Kamol"
        user.change(name: testName8)
        
        XCTAssertEqual(user.name, testName8, "User name must have new value: \(testName8), but it stayed as: `\(user.name)`")
    }
}

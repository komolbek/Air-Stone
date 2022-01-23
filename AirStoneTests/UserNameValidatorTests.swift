//
//  UserNameValidatorTests.swift
//  AirStoneTests
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import XCTest
import AirStone

final class UserNameValidatorTests: XCTestCase {
    
    func testValidate() {
        XCTAssertEqual(true, checkIfValidName(testName))
        XCTAssertEqual(true, checkIfValidName(testName2))
        XCTAssertEqual(false, checkIfValidName(testName3))
        XCTAssertEqual(false, checkIfValidName(testName4))
    }
    
    func testValidateNameCount() {
        XCTAssertEqual(true, checkIfValidNameCount(testName))
        XCTAssertEqual(false, checkIfValidNameCount(testName7))
        XCTAssertEqual(true, checkIfValidNameCount(testName8))
    }
}

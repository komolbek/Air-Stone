//
//  UserNameSpaceCleanerTests.swift
//  AirStoneTests
//
//  Created by Komolbek Ibragimov on 22/01/2022.
//

import XCTest
import AirStone

final class UserNameSpaceCleanerTests: XCTestCase {

    func testCleanRedundantSpace() {
        XCTAssertEqual("Kamol", cleanRedundantSpace(in: testName))
        XCTAssertEqual("Kamol", cleanRedundantSpace(in: testName5))
        XCTAssertEqual("Kamol", cleanRedundantSpace(in: testName6))
        XCTAssertEqual("Ka mol", cleanRedundantSpace(in: testName7))
    }
}

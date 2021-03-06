//
//  TTTTimeIntervalFormatterTests.swift
//  FormatterKit
//
//  Created by Victor Ilyukevich on 4/27/16.
//  Copyright © 2016. All rights reserved.
//

import XCTest
import FormatterKit

class TTTTimeIntervalFormatterTests: XCTestCase {
    var formatter: TTTTimeIntervalFormatter!

    override func setUp() {
        super.setUp()
        formatter = TTTTimeIntervalFormatter()
    }

    // MARK: Tests

    func testStandardPast() {
        XCTAssertEqual(formatter.stringForTimeInterval(-1), "1 saniye önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-100), "1 dakika önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-10000), "2 saat önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-100000), "1 gün önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-200000), "2 gün önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-10000000), "3 ay önce")
    }

    func testStandardFuture() {
        XCTAssertEqual(formatter.stringForTimeInterval(1), "1 saniye from now")
        XCTAssertEqual(formatter.stringForTimeInterval(100), "1 dakika from now")
        XCTAssertEqual(formatter.stringForTimeInterval(10000), "2 saat from now")
        XCTAssertEqual(formatter.stringForTimeInterval(100000), "1 gün from now")
        XCTAssertEqual(formatter.stringForTimeInterval(200000), "2 gün from now")
        XCTAssertEqual(formatter.stringForTimeInterval(10000000), "3 ay from now")
    }

    func testIdiomaticPast() {
        formatter.usesIdiomaticDeicticExpressions = true

        XCTAssertEqual(formatter.stringForTimeInterval(-1), "1 saniye önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-100), "1 dakika önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-10000), "2 saat önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-100000), "1 gün önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-200000), "2 gün önce")
        XCTAssertEqual(formatter.stringForTimeInterval(-10000000), "3 ay önce")
    }
    
}

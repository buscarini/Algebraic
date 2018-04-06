//
//  MaxTests.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class MaxTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   func testMaxInt() {
		
//		let value = Max.empty <> Max(2)
//		XCTAssertTrue( value.value == 2 )
	
		XCTAssertTrue( (Max(7) <> Max(2)).value == 7 )
	
		XCTAssertTrue( Array(1...1000).foldMap(Max.init, initial: Max(0)).value == 1000 )
	
	
		XCTAssertTrue( (Max("blah") <> Max("b")).value == "blah" )
	}
	
	func testMaxString() {
	
		let value = Max<String>.empty <> Max("b")
		XCTAssertTrue( value.value == "b" )
	
		XCTAssertTrue( (Max("blah") <> Max("b")).value == "blah" )
	}
	
	func testMaxDate() {
		let date1 = Date(timeIntervalSince1970: 10)
		let date2 = Date(timeIntervalSince1970: 100)

		XCTAssertTrue( (Max(date1) <> Max(date2)).value == date2 )
	}
}


//
//  Longest.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

import XCTest

import Algebraic

class LongestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   func testLongest() {
		
		let value = Longest.empty <> Longest("blah")
		XCTAssertTrue( value.value == "blah" )
	
		XCTAssertTrue( (Longest("blah") <> Longest("a")).value == "blah" )
		XCTAssertTrue( (Longest("a") <> Longest("blah")).value == "blah" )
	}
}


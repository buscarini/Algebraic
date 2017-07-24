//
//  Shortest.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

import XCTest

import Algebraic

class ShortestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   func testShortest() {
		
		let value = Shortest.empty <> Shortest("blah")
		XCTAssertTrue( value.value == "" )
	
		XCTAssertTrue( (Shortest("blah") <> Shortest("a")).value == "a" )
		XCTAssertTrue( (Shortest("a") <> Shortest("blah")).value == "a" )
	}
}


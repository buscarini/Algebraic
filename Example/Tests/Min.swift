//
//  Min.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class MinTests: XCTestCase {
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testMin() {
		
//		let value = Min.empty <> Min(2)
//		XCTAssertTrue( value.value == 2 )
		
		XCTAssertTrue( (Min(7) <> Min(2)).value == 2)
		
		XCTAssertTrue( Array(1...1000).foldMap(Min.init, initial: Min(10000)).value == 1 )
	}
	
}

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
	func testMin() {
		XCTAssertEqual(Monoid<Int>.min.combine(7, 2), 2)
		
		XCTAssertEqual(Array(1...1000).reduced(Monoid<Int>.min), 1)
	}
}

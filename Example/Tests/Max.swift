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
	func testMaxInt() {
		let s = Semigroup<Int>.max
		
		XCTAssertEqual(s.combine(7, 2), 7)
		
		XCTAssertEqual(Array(1...1000).reduced(0, s), 1000)
		
		XCTAssertEqual(Semigroup<String>.max.combine("blah", "b"), "blah")
	}
	
	func testMaxString() {
		let m = Monoid<String>.max
		
		let value = m.combine(m.empty, "b")
		
		XCTAssertEqual(value, "b")
		XCTAssertEqual(m.combine("blah", "b"), "blah")
	}
	
	func testMaxDate() {
		let date1 = Date(timeIntervalSince1970: 10)
		let date2 = Date(timeIntervalSince1970: 100)
		let s = Semigroup<Date>.max
		
		XCTAssertEqual(s.combine(date1, date2), date2)
	}
}


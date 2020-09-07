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
   func testLongest() {
		let m = String.longest
		
		m.test("a", "blah", "b")
		
		XCTAssertEqual(m.combine("a", "blah"), "blah")
		XCTAssertEqual(m.combine("blah", "a"), "blah")
	}
}


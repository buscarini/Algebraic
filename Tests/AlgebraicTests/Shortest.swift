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
	func testShortest() {
		let s = String.shortest
		
		s.test("a", "blah", "blahblih")
		
		XCTAssertEqual(s.combine("a", "blah"), "a")
		XCTAssertEqual(s.combine("blah", "a"), "a")
	}
}


//
//  StringTests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

import Foundation
import XCTest

import Algebraic

class StringTests: XCTestCase {
	func testMonoid() {
		let m = String.monoid
		
		XCTAssertEqual(m.empty, "")
		
		XCTAssertEqual(m.combine(m.empty, "a"), "a")
		XCTAssertEqual(m.combine("a", m.empty), "a")
		XCTAssertEqual(m.combine("a", "b"), "ab")
	}
}

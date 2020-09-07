//
//  SequenceTests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

import Foundation
import XCTest

import Algebraic

class SequenceTests: XCTestCase {
	func testReducedToOptional() {
		let ints = Array(1...100000)
		
		XCTAssertNil([].reduced(Semigroup<Int>.max))
		XCTAssertEqual(ints.reduced(Semigroup<Int>.max), 100000)
	}
}

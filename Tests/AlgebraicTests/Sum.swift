//
//  Sum.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class SumTests: XCTestCase {	
	func testSum() {
		let sum = Monoid<Int>.sum
		let usum = Monoid<UInt>.sum
		
		XCTAssertEqual(sum.combine(1, 2), 3)
		XCTAssertEqual(usum.combine(1, 2), 3)
	}
}


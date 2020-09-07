//
//  Optional.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//


import XCTest

import Algebraic

class OptionalTests: XCTestCase {
   func testMax() {
		let monoid = Semigroup<Int>.max.lift()
	
		XCTAssertEqual(monoid.combine(monoid.empty, 2), 2)
		XCTAssertEqual(monoid.combine(2, monoid.empty), 2)
		XCTAssertEqual(monoid.combine(2, 3), 3)
		XCTAssertNil(monoid.combine(monoid.empty, nil))
	}
}


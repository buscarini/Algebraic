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
		XCTAssertNil(monoid.combine(monoid.empty, nil))
	}
}


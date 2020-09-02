//
//  Average.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 2/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class AverageTests: XCTestCase {
	typealias IAverage = Average<Int>
	typealias DAverage = Average<Double>
	
	func testAverage() {
		XCTAssertEqual(Average<Int>.monoid.combine(2, 4).value, 3)
		
		XCTAssertEqual(Average<Double>.monoid.combine(1, 2).value, 1.5)
	}
	
	func testAverageFoldMap() {
		XCTAssertEqual(
			[2, 4]
				.foldMap(Average<Int>.self),
			3
		)
	}
}


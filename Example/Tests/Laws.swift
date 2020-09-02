//
//  Laws.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import Algebraic

class LawsTests: XCTestCase {

	func testAllMonoid() {
		let all = Monoid<Bool>.all
		
		XCTAssertTrue(all.combine(all.empty, true))
		XCTAssertTrue(all.combine(true, all.empty))
		XCTAssertTrue(all.combine(!all.empty, false))
		XCTAssertTrue(all.combine(!false, all.empty))
	
		XCTAssertEqual(
			all.combine(
				false, false, true
			),
			all.combine(
				false, false, true
			)
		)
	}
}

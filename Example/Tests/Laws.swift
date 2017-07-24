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
		XCTAssertTrue((All.empty <> All(true)).value)
		XCTAssertTrue((All(true) <> All.empty).value)
		XCTAssertTrue(!(All.empty <> All(false)).value)
		XCTAssertTrue(!(All(false) <> All.empty ).value)
	
	
		XCTAssert( (All(false) <> All(false)) <> All(true) == All(false) <> (All(false) <> All(true)) )
	
		// TODO: See how to generate all the combinations

	}

}

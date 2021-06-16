//
//  Earliest.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

import XCTest

import Algebraic

class EarliestTests: XCTestCase {
   func testEarliest() {
		let s = Date.earliest
		
		s.test(
			Date(timeIntervalSince1970: 10),
			Date(timeIntervalSince1970: 11),
			Date(timeIntervalSince1970: 15)
		)
		
		let date1 = Date(timeIntervalSince1970: 10)
		let date2 = Date(timeIntervalSince1970: 100)
	
		XCTAssertEqual(s.combine(date1, date2), date1)
		XCTAssertEqual(s.combine(date2, date1), date1)
	}
}


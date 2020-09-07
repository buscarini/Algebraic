//
//  ProductTests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

import Foundation
import XCTest
import Algebraic

class ProductTests: XCTestCase {
	func testProduct() {
		let m = Monoid<Int>.product
		let um = Monoid<UInt>.product
		
		m.test(1, 2, 3)
		um.test(1, 2, 3)
		
		XCTAssertEqual(m.combine(2, 3), 6)
		XCTAssertEqual(um.combine(0, 7), 0)
	}
}


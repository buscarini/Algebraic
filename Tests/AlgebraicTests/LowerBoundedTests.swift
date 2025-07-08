import Foundation

import XCTest

import Algebraic

class LowerBoundedTests: XCTestCase {
	func testLowerBounded() {
		let m = Monoid<Double>.max
		
		XCTAssertEqual(
			m.combine(1, 23, -22),
			23
		)
	}
}


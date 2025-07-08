import XCTest

import Algebraic

class SetTests: XCTestCase {
	func testSet() {
		let set = Set<Int>.monoid
		
		set.test(
			Set(arrayLiteral: 1),
			Set(arrayLiteral: 1),
			Set(arrayLiteral: 2, 3, 4)
		)
		
		
		XCTAssertEqual(
			set.combine(
				Set(arrayLiteral: 1),
				Set(arrayLiteral: 2)
			),
			Set(arrayLiteral: 1, 2)
		)
		
		XCTAssertEqual(
			set.combine(
				Set(),
				Set(arrayLiteral: 2)
			),
			Set(arrayLiteral: 2)
		)
		
		XCTAssertEqual(
			set.combine(
				Set(arrayLiteral: 2, 4, 8),
				Set(arrayLiteral: 2)
			),
			Set(arrayLiteral: 2, 4, 8)
		)
	}
}


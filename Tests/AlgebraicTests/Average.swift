import XCTest

import Algebraic

class AverageTests: XCTestCase {
	typealias IAverage = Average<Int>
	typealias DAverage = Average<Double>
	
	func testAverage() {
		Average<Int>.monoid.test(1, 2, 4)
		
		XCTAssertEqual(Average<Int>.monoid.combine(2, 4).value, 3)
		
		XCTAssertEqual(Average<Double>.monoid.combine(1, 2).value, 1.5)
	}
	
	func testAverageFoldMap() {
		XCTAssertEqual(
			[2, 4].foldMap(Average<Int>.self).value,
			3
		)
	}
}


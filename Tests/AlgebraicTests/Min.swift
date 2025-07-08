import XCTest

import Algebraic

class MinTests: XCTestCase {	
	func testMin() {
		XCTAssertEqual(Monoid<Int>.min.combine(7, 2), 2)
		
		XCTAssertEqual(Array(1...1000).reduced(Monoid<Int>.min), 1)
	}
}

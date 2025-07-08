import Foundation

import XCTest

import Algebraic

class LongestTests: XCTestCase {
   func testLongest() {
		let m = String.longest
		
		m.test("a", "blah", "b")
		
		XCTAssertEqual(m.combine("a", "blah"), "blah")
		XCTAssertEqual(m.combine("blah", "a"), "blah")
	}
}


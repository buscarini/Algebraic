import Foundation
import XCTest

import Algebraic

class StringTests: XCTestCase {
	func testMonoid() {
		let m = String.monoid
		
		XCTAssertEqual(m.empty, "")
		
		XCTAssertEqual(m.combine(m.empty, "a"), "a")
		XCTAssertEqual(m.combine("a", m.empty), "a")
		XCTAssertEqual(m.combine("a", "b"), "ab")
	}
}

import XCTest

import Algebraic

class MaxTests: XCTestCase {
	func testMaxInt() {
		let s = Semigroup<Int>.max
		
		s.test(0, 5, 100)
		
		XCTAssertEqual(s.combine(7, 2), 7)
		
		XCTAssertEqual(Array(1...1000).reduced(0, s), 1000)
		
		XCTAssertEqual(Semigroup<String>.max.combine("blah", "b"), "blah")
	}
	
	func testMaxString() {
		let m = Monoid<String>.max
		
		m.test("", "a", "b")
		
		let value = m.combine(m.empty, "b")
		
		XCTAssertEqual(value, "b")
		XCTAssertEqual(m.combine("blah", "b"), "blah")
	}
	
	func testMaxDate() {
		let date1 = Date(timeIntervalSince1970: 10)
		let date2 = Date(timeIntervalSince1970: 100)
		let s = Semigroup<Date>.max
		
		s.test(
			Date(timeIntervalSince1970: -10),
			Date(timeIntervalSince1970: 10),
			Date(timeIntervalSince1970: 100)
		)
		
		XCTAssertEqual(s.combine(date1, date2), date2)
	}
}


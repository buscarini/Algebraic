import XCTest
import Algebraic

class SumTests: XCTestCase {	
	func testSum() {
		let sum = Monoid<Int>.sum
		let usum = Monoid<UInt>.sum
		
		XCTAssertEqual(sum.combine(1, 2), 3)
		XCTAssertEqual(usum.combine(1, 2), 3)
	}
}


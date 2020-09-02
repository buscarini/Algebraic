
import XCTest
import Algebraic

class AllTests: XCTestCase {
    func testAllMonoid() {
		XCTAssertEqual(Monoid.all.empty, true)
	
		XCTAssertEqual(Monoid.all.combine(false, false), false)
		XCTAssertEqual(Monoid.all.combine(true, false), false)
		XCTAssertEqual(Monoid.all.combine(false, true), false)
		XCTAssertEqual(Monoid.all.combine(true, true), true)
    }
}


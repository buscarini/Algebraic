import XCTest
import Algebraic

class LawsTests: XCTestCase {

	func testAllMonoid() {
		let all = Monoid<Bool>.all
		
		XCTAssertTrue(all.combine(all.empty, true))
		XCTAssertTrue(all.combine(true, all.empty))
		XCTAssertFalse(all.combine(!all.empty, false))
		XCTAssertTrue(all.combine(!false, all.empty))
	
		XCTAssertEqual(
			all.combine(
				false, false, true
			),
			all.combine(
				false, false, true
			)
		)
	}
}

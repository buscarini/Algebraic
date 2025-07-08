import Foundation
import XCTest
import Algebraic

class PredicateTests: XCTestCase {
	func testPredicate() {
		let isEmpty = Predicate<String> { $0.count == 0 }
		let isShort = Predicate<String> { $0.count < 5 }
		let hasExclamation = Predicate<String> {
			$0.contains("!")
		}
		
		let m = Predicate<String>.monoid(Monoid<Bool>.any)
		
		let checks = m.combine(
			isEmpty,
			isShort,
			hasExclamation
		)
		
		XCTAssert(checks(""))
		XCTAssert(checks("shrt"))
		XCTAssert(checks("exclaimed!"))
		XCTAssertFalse(checks("this does not match"))
	}
}

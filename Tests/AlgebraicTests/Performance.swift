import XCTest

import Algebraic

class PerformanceTests: XCTestCase {
	func testFoldMap() {
		let strings = Array(1...100000).map(String.init)
		self.measure {
			XCTAssertEqual(
				strings
				.foldMap({ Int($0)! }, Monoid.sum),
				5000050000
			)
		}
	}

	func testReduce() {
		self.measure {
			XCTAssertEqual(Array(1...100000)
				.reduced(Monoid.sum), 5000050000)
		}
	}
}

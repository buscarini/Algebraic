import XCTest

import Algebraic

class DictionaryTests: XCTestCase {
	func testMonoid() {
		let first = Dictionary<String, Int>.monoid(.first)
		
		XCTAssertEqual(
			[
				[ "hello": 1 ],
				[
					"hello": 6,
					"bye": 3
				],
			].reduced(first),
			[
				"hello": 1,
				"bye": 3
			]
		)
		
		let last = Dictionary<String, Int>.monoid(.last)
		
		XCTAssertEqual(
			[
				[ "hello": 1 ],
				[
					"hello": 6,
					"bye": 3
				],
			].reduced(last),
			[
				"hello": 6,
				"bye": 3
			]
		)
	}
}

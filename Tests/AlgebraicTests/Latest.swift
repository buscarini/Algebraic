import Foundation

import XCTest

import Algebraic

class LatestTests: XCTestCase {
   func testLatest() {
		let latest = Date.latest
		
		latest.test(
			Date(timeIntervalSince1970: 10),
			Date(timeIntervalSince1970: 15),
			Date(timeIntervalSince1970: 100)
		)
	
		let date1 = Date(timeIntervalSince1970: 10)
		let date2 = Date(timeIntervalSince1970: 100)
		
		XCTAssertTrue(latest.combine(date1, date2) == date2 )
		XCTAssertTrue(latest.combine(date2, date1) == date2 )
	}
}


import Foundation
import XCTest
import Algebraic

public extension Monoid where T: Equatable {
	func test(
		_ first: T,
		_ second: T,
		_ third: T,
		file: StaticString = #file,
		line: UInt = #line
	) {
		self.semigroup.test(first, second, third, file: file, line: line)
		
		self.testId(first, second, third, file: file, line: line)
	}
		
	func testId(
		_ first: T,
		_ second: T,
		_ third: T,
		file: StaticString = #file,
		line: UInt = #line
	) {
		XCTAssertEqual(
			self.combine(
				self.empty,
				self.empty
			),
			self.empty
		)
		
		XCTAssertEqual(
			self.combine(
				self.empty,
				first
			),
			first
		)
		
		XCTAssertEqual(
			self.combine(
				self.empty,
				second
			),
			second
		)
		
		XCTAssertEqual(
			self.combine(
				self.empty,
				third
			),
			third
		)
	}
}

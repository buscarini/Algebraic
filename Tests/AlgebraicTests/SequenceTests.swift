import Foundation
import XCTest

import Algebraic

class SequenceTests: XCTestCase {
	func testReducedToOptional() {
		let ints = Array(1...100000)
		
		XCTAssertNil([].reduced(Semigroup<Int>.max))
		XCTAssertEqual(ints.reduced(Semigroup<Int>.max), 100000)
	}
	
	func testReduceMonoidal() {
		XCTAssertEqual(
			[
				Ordering.lt, .eq, .lt, .eq
			].reduced(),
			.lt
		)
		
		XCTAssertEqual(
			[
				Ordering.gt, .eq, .lt, .lt
			].reduced(),
			.gt
		)
	}
	
	func testReduceSemigroupal() {
		XCTAssertEqual(
			[
				Ordering.lt, .eq, .lt, .eq
			].reduced(initial: .eq),
			.lt
		)
		
		XCTAssertEqual(
			[
				Ordering.gt, .eq, .lt, .lt
			].reduced(initial: .gt),
			.gt
		)
	}
}

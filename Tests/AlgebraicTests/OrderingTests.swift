//
//  OrderingTests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

import Foundation
import XCTest

import Algebraic

class OrderingTests: XCTestCase {
	func testMonoid() {
		let m = Ordering.monoid
		
		m.test(.lt, .eq, .gt)
		
		XCTAssertEqual(m.combine(.lt, .gt), .lt)
		XCTAssertEqual(m.combine(.eq, .lt), .lt)
		XCTAssertEqual(m.combine(.eq, .gt), .gt)
		XCTAssertEqual(m.combine(.gt, .lt), .gt)
	}
	
	func testInverse() {
		XCTAssertEqual(Ordering.lt.inverse, .gt)
		XCTAssertEqual(Ordering.gt.inverse, .lt)
		XCTAssertEqual(Ordering.eq.inverse, .eq)
	}
	
	func testComparator() {
		XCTAssertEqual(
			Int.comparator().value((1, 2)),
			.lt
		)

		XCTAssertEqual(
			Int.comparator().value((2, 2)),
			.eq
		)
		
		XCTAssertEqual(
			Int.comparator().value((9, 2)),
			.gt
		)
	}
	
	func testReversed() {
		XCTAssertEqual(
			Int.comparator().reversed().value((1, 2)),
			.gt
		)

		XCTAssertEqual(
			Int.comparator().reversed().value((2, 2)),
			.eq
		)
		
		XCTAssertEqual(
			Int.comparator().reversed().value((9, 2)),
			.lt
		)
	}
	
	func testFrom() {
		XCTAssertEqual(Ordering.from(1, 4), .lt)
		XCTAssertEqual(Ordering.from(1, 1), .eq)
		XCTAssertEqual(Ordering.from(4, 1), .gt)
	}
	
	func testIsAscending() {
		XCTAssert(Ordering.from(1, 4).isAscending)
		XCTAssert(Ordering.from(1, 1).isAscending)
		XCTAssertFalse(Ordering.from(4, 1).isAscending)
	}
}


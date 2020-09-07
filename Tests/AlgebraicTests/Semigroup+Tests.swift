//
//  Semigroup+Tests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

import Foundation
import XCTest
import Algebraic

public extension Semigroup where T: Equatable {
	func test(
		_ first: T,
		_ second: T,
		_ third: T,
		file: StaticString = #file,
		line: UInt = #line
	) {
		testAssociative(first, second, third, file: file, line: line)
	}
	
	func testAssociative(
		_ first: T,
		_ second: T,
		_ third: T,
		file: StaticString = #file,
		line: UInt = #line
	) {
		
		XCTAssertEqual(
			self.combine(first, second, third),
			self.combine(
				self.combine(first, second),
				third
			)
		)
		
		XCTAssertEqual(
			self.combine(
				self.combine(first, second),
				third
			),
			self.combine(
				first,
				self.combine(second, third)
			)
		)
	}
}

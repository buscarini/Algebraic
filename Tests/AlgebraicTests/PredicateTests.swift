//
//  PredicateTests.swift
//  AlgebraicTests
//
//  Created by José Manuel Sánchez Peñarroja on 07/09/2020.
//

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
		
//		let checks2: Predicate<String> = isEmpty || isShort || hasExclamation
//		
//		XCTAssert(checks2(""))
//		XCTAssert(checks2("shrt"))
//		XCTAssert(checks2("exclaimed!"))
//		XCTAssertFalse(checks2("this does not match"))
	}
	
}

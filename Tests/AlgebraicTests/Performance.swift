//
//  Reduce.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

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
	
	func testParallelFoldMap() {
		let strings = Array(1...100000).map(String.init)
		self.measure {
			XCTAssertEqual(
				strings
				.parallelFoldMap({ Int($0)! }, Monoid.sum),
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
	
	func testParallelReduce() {
		self.measure {
			XCTAssertEqual(Array(1...100000)
				.parallelReduced(Monoid.sum), 5000050000)
		}
	}
	
}

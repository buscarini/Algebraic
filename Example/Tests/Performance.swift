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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
	func testFoldMap() {
        self.measure {
			XCTAssertTrue(Array(1...100000).foldMap(Sum.init).value == 5000050000)
        }
    }
	
	func testParallelFoldMap() {
        self.measure {
			XCTAssertTrue(Array(1...100000).parallelFoldMap(Sum.init).value == 5000050000)
        }
    }
	
	func testReduce() {
		let values = Array(1...100000).map(Sum.init)
	
		self.measure {
			XCTAssertTrue(values.reduced().value == 5000050000)
		}
	}
	
    func testParallelReduce() {
		let values = Array(1...100000).map(Sum.init)
	
        self.measure {
			XCTAssertTrue(values.parallelReduced().value == 5000050000)
        }
    }
    
}

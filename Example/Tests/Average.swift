//
//  Average.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 2/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class AverageTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	typealias IAverage = Average<Int>
	typealias DAverage = Average<Double>
	
    func testAverage() {
		XCTAssertTrue( (IAverage(2) <> IAverage(4) ).value == 3 )
		
		XCTAssertTrue( (DAverage(1) <> DAverage(2) ).value == 1.5 )
    }
	
}


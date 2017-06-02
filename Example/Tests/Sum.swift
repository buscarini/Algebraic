//
//  Sum.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

import Algebraic

class SumTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	typealias USum = Sum<UInt>
	
    func testSum() {
		XCTAssertTrue( (Sum(1) <> Sum(2) ).value == 3 )
		
		XCTAssertTrue( (USum(1) <> USum(2) ).value == 3 )
    }
	
}


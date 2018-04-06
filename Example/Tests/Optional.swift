//
//  Optional.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//


import XCTest

import Algebraic

class OptionalTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   func testMax() {
		typealias MaxMonoid<A: Comparable & Hashable> = Optional<Max<A>>
	
		let value = MaxMonoid.empty <> MaxMonoid(Max(2))
		XCTAssertTrue( value?.value == 2 )
	}
}


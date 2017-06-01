
import UIKit
import XCTest
import Algebraic

class AllTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
    func testAllMonoid() {
		XCTAssert(All.empty.value == true)
	
		XCTAssert( (All(false) <> All(false)).value == false )
		XCTAssert( (All(true) <> All(false)).value == false )
		XCTAssert( (All(false) <> All(true)).value == false )
		XCTAssert( (All(true) <> All(true)).value == true )
    }
}


//
//  TDD_to_GoTests.swift
//  TDD to GoTests
//
//  Created by Luay Younus on 5/28/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

import XCTest
@testable import TDD_to_Go

class TDD_to_GoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        
        let viewController = ViewController()
        
        let string = "Luay"
        
        let numberOfVowels = viewController.numberOfVowelsInString(string : string)
        
        XCTAssertEqual(numberOfVowels, 2, "should find 2 vowels in Luay")
        
    }

}

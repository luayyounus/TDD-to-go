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
        
        let name = "Luay"
        
        let numberOfVowels = viewController.numberOfVowelsInString(string : name)
        
        XCTAssertEqual(numberOfVowels, 2, "should find 2 vowels in \(name)",file: "TDD_to_GoTests.swift", line: 24)
        
    }
    
    func testNumbersToSpelledNumbers() {
        
        let viewController = ViewController()
        
        let arrayOfNumbers = [11,22,33,44]
        
        let stringifiedNumbers = viewController.numbersToSpelledNumbers(numbers: arrayOfNumbers as [NSNumber])
        
        XCTAssertNotNil(stringifiedNumbers, "result shouldn't return nil")
        
        print("Stringified Numbers: \(stringifiedNumbers)")
        
    }
    
    func testSumArray() {
        let viewController = ViewController()
        let someArrayOfnums = [5,7,9,3,5,32,3,56,74]
        
        let result = viewController.sumArray(nums: someArrayOfnums)
        XCTAssertTrue(result == nil,"result should return nil back")
    }
    
    func testZipStudentsInfo_ShouldReturnArrayOfStudentsNamesAndGrades(){
        let viewController = ViewController()
    
        let result = viewController.zipStudentsInfo(names: ["Luay","Brandon"], grades: [88,89])
        for student in result {
            XCTAssertTrue(student is Dictionary<String, Any>, "Type returned is not dictionary of type [String:Any], check the function")
        }
    }
}

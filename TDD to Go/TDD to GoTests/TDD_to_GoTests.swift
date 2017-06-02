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
    
    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //Number of Vowels in String using Reduce
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        
        let name = "Luay"
        let numberOfVowels = viewController.numberOfVowelsInString(string : name)
        
        XCTAssertEqual(numberOfVowels, 2, "should find 2 vowels in \(name)",file: "TDD_to_GoTests.swift", line: 24)
        
    }
    
    //Convert Numbers into Spelled Numbers
    func testNumbersToSpelledNumbers() {
        
        let arrayOfNumbers = [11,22,33,44]
        
        let stringifiedNumbers = viewController.numbersToSpelledNumbers(numbers: arrayOfNumbers as [NSNumber])
        
        XCTAssertNotNil(stringifiedNumbers, "result shouldn't return nil")
        
        print("Stringified Numbers: \(stringifiedNumbers)")
        
    }
    
    //Flatten an Array without optional 'nil' using FlatMap
    func testFlattenAnArryWithoutOptionals(){
        
        var arrayWithoutNil:[String]? = viewController.flattenAnArryWithoutOptionals(nestedArray: ["Horse",nil,"Cat","Dog",nil,nil,"Parrot"])
        
        if (arrayWithoutNil?.count)! > 5 {
            arrayWithoutNil = nil
        }

        XCTAssertNotNil(arrayWithoutNil,"The function is not excluding nils from the array")
    }
    
    //Sum of Array using Filter and Reduce
    func testSumArray() {
        
        let someArrayOfnums = [5,7,9,3,5,32,3,56,74]
        let result = viewController.sumArray(nums: someArrayOfnums)
        
        XCTAssertTrue(result == nil,"result should return nil back")
    }
    
    func testZipStudentsInfo_ShouldReturnArrayOfStudentsNamesAndGrades(){
        
        let result = viewController.zipStudentsInfo(names: ["Luay","Brandon"], grades: [88,89])
        for student in result {
            XCTAssertTrue(student is Dictionary<String, Any>, "Type returned is not dictionary of type [String:Any], check the function")
        }
    }
    
    //Capitilize first Letter in a string
    func testMakeHeadline(){
        let inputString = "i am going to be capitalized at the beginning"
        let expectedString = "I Am Going To Be Capitalized At The Beginning"
        let headline = viewController.makeHeadline(string: inputString)
        XCTAssertEqual(headline, expectedString)
    }
}

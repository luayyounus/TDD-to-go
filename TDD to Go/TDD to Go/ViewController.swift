//
//  ViewController.swift
//  TDD to Go
//
//  Created by Luay Younus on 5/28/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func numberOfVowelsInString(string : String) -> Int {
        let vowels : [Character] = ["a","e","i","o","u","A","E","I","O","U"]
        return string.characters.reduce(0, { $0 + (vowels.contains($1) ? 1 : 0)})
    }
    
    
    func numbersToSpelledNumbers(numbers : [NSNumber]) -> [String] {
        return numbers.map { NumberFormatter.localizedString(from: $0, number: .spellOut) }
    }
    
    
    func flattenAnArryWithoutOptionals(nestedArray : [String?]) -> [String]{
        return nestedArray.flatMap{ $0 }
    }
    
    func sumArray(nums:[Int]) -> Int? {
        let sum = nums.filter{ $0 < 3 }.reduce(0, { $0 + $1 })
        if sum == 0 {
            return nil
        }
        return sum
    }
    
    func zipStudentsInfo(names: [String], grades: [Int]) -> [[String:Any]] {
        let zippedStudents = zip(names, grades)
        
        let studentsZippedArray:[[String:Any]] = zippedStudents.map { (student) -> [String:Any] in
            let stud: [String:Any] = ["Name":student.0,"Grade":student.1]
            return stud
        }
        return studentsZippedArray
    }
    
    func makeHeadline(string:String) -> String {
        let words = string.components(separatedBy: " ")
        var headline = ""
        headline = words.map { (word) -> String in
            var word = word
            let firstCharacter = word.remove(at: word.startIndex)
            return "\(String(firstCharacter).uppercased())\(word)"
        }.joined(separator:" ")
        return headline
    }
}

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

}


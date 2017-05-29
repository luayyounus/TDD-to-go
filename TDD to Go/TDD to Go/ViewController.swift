//
//  ViewController.swift
//  TDD to Go
//
//  Created by Luay Younus on 5/28/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func numberOfVowelsInString(string: String) -> Int {
        let vowels : [Character] = ["a","e","i","o","u","A","E","I","O","U"]
        
        var numberOfVowels = 0
        for character in string.characters {
            if vowels.contains(character){
                numberOfVowels += 1
            }
        }
        return numberOfVowels
    }

}


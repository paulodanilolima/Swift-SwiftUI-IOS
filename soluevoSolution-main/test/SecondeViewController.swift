//
//  SecondeViewController.swift
//  test
//
//  Created by Paulo Danilo Conceição Lima on 31/01/23.
//

import UIKit

class SecondeViewController: UIViewController {
    
    var text: String = ""
    var dict: [String: Int]?
    @IBOutlet var lblText: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lblText?.text = countWords(in: text)
    }
    
    func countWords(in string: String) -> String {
        let words = string.split(separator: " ")
        var wordCounts: [String: Int] = [:]
        for word in words {
            let lowercasedWord = word.lowercased()
            if wordCounts[lowercasedWord] == nil {
                wordCounts[lowercasedWord] = 1
            } else {
                wordCounts[lowercasedWord]! += 1
            }
        }
        var result = ""
        for (word, count) in wordCounts {
            result += "\(word): \(count)\n"
        }
        return result
    }

}

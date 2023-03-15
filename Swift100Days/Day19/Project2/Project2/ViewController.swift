//
//  ViewController.swift
//  Project2
//
//  Created by Paulo Danilo Conceição Lima on 14/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Butto2: UIButton!
    @IBOutlet weak var Butto3: UIButton!
    var countries: [String] = []
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["estonia", "france", "germany", "ireland", "italy", "manaco", "nigeria","poland", "russia", "spain", "uk", "us"]
        Button1.layer.borderWidth = 1
        Butto2.layer.borderWidth = 1
        Butto3.layer.borderWidth = 1
        
        askQuestion()
    }
    
    func askQuestion(){
        Button1.setImage(UIImage(named: countries[0]), for: .normal)
        Butto2.setImage(UIImage(named: countries[1]), for: .normal)
        Butto3.setImage(UIImage(named: countries[2]), for: .normal)
    }


}


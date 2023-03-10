//
//  ViewController.swift
//  test
//
//  Created by Paulo Danilo Conceição Lima on 31/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField?
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let newViewController = SecondeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField!.delegate = self
    }
}


extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.navigationController?.pushViewController(newViewController, animated: true)
        newViewController.text = textField.text ?? ""
        self.present(newViewController, animated: true)
     
        return true
    }
}


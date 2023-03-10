//
//  DetalheViewController.swift
//  Mobile-MadeinWeb
//
//  Created by Paulo Danilo Conceição Lima on 16/08/21.
//

import UIKit

class DetalheViewController: UIViewController {
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    var titulo: String = " "
    var descricao: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloLabel.text = titulo
        descLabel.text = descricao
       
    }
    

}

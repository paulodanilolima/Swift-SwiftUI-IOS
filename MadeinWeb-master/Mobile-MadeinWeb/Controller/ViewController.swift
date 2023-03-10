//
//  ViewController.swift
//  Mobile-MadeinWeb
//
//  Created by Paulo Danilo Conceição Lima on 16/08/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, VideoManagerDelegate {

    @IBOutlet weak var searchTextField: UITextField!
    var videoManager = VideoManager()
    var titulo: [String] = []
    var descricao: [String] = []
    var url: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoManager.delegate = self
        searchTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        
        searchTextField.endEditing(true)
        
        //print(searchTextField.text!)
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            performSegue(withIdentifier: "goToSecondView", sender: self)
            return true
        }else{
            textField.placeholder = "Don't Forget"
            return false
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        //aqui vem a chamada da funcao
        if let video = searchTextField.text{
           
            videoManager.fetcVideo(videoName: video)
            
        }
    
        
        searchTextField.text = ""
    }
    
    func didUpdateVideo(video: VideoModel){
      // print(video.discription)
      // print(video.tittle)
      // print(video.url)
        
        descricao = video.discription
        url = video.url
        titulo = video.tittle

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.descricao = descricao
           // destinationVC.url = url
            destinationVC.titulo = titulo
        }
    }
    
}


//
//  SecondViewController.swift
//  Mobile-MadeinWeb
//
//  Created by Paulo Danilo Conceição Lima on 16/08/21.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate, VideoManagerDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelText: UITextField!
        
        var videoManager = VideoManager()
        var titulo: [String] = []
        var descricao: [String] = []
        var url: [UIImage] = [#imageLiteral(resourceName: "cdn"),#imageLiteral(resourceName: "cdn"),#imageLiteral(resourceName: "cdn"),#imageLiteral(resourceName: "cdn"),#imageLiteral(resourceName: "cdn")]
        var det: String = ""
        var tit: String = ""
        override func viewDidLoad() {
            super.viewDidLoad()
            videoManager.delegate = self
            labelText.delegate = self
            tableView.reloadData()
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "VideoCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
            tableView.reloadData()
            
        }
    @IBAction func searchPressed(_ sender: UIButton) {
        labelText.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        labelText.endEditing(true)
        print(labelText.text!)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if labelText.text != ""{
            print(labelText.text!)
            tableView.reloadData()
            return true
        }else{
            labelText.placeholder = "Don't Forget"
            return false
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        //aqui vem a chamada da funcao
        if let video = labelText.text{
            tableView.reloadData()
        videoManager.fetcVideo(videoName: video)
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalhes" {
            let destinationVC = segue.destination as! DetalheViewController
            destinationVC.descricao = det
           // destinationVC.url = url
            destinationVC.titulo = tit
        }
    }
    func didUpdateVideo(video: VideoModel) {
        print(video.discription)
        print(video.tittle)
        print(video.url)
    }
    
}


extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titulo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! VideoCell
        
        cell.tituloLabel.text = titulo[indexPath.row]
        cell.imageView?.image = url[indexPath.row]
        cell.descView.text = descricao[indexPath.row]
        return cell
    }
    
    
}
extension SecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            det = descricao[indexPath.row]
            tit = titulo[indexPath.row]
            performSegue(withIdentifier: "goToDetalhes", sender: self)
    }
}
 

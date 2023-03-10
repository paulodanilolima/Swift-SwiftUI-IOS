//
//  VideoManager.swift
//  MadeWebTeste
//
//  Created by Paulo Danilo Conceição Lima on 15/08/21.
//

import Foundation
protocol VideoManagerDelegate {
    func didUpdateVideo(video: VideoModel)
}

struct VideoManager {
    
    var delegate: VideoManagerDelegate?
    
    func fetcVideo(videoName: String){
        let urlString = "https://www.googleapis.com/youtube/v3/search?part=id,snippet&q=\(videoName)&key=AIzaSyBlIw0MmVwFe77F_Mv9D4UNCOcDTJpr19E"
        print(urlString)
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let video = self.parseJSON(videoData: safeData){
                        self.delegate?.didUpdateVideo(video: video)
                    }
                }
            }
            
            
            task.resume()
        }
    }
    func parseJSON(videoData: Data) -> VideoModel?{
        
        var titulo: [String] = []
        var descricao: [String] = []
        var url: [String] = []
        
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(VideoData.self, from: videoData)
            
            for n in 0...decodedData.items.count - 1{
                
                titulo.append(decodedData.items[n].snippet.title)
                descricao.append(decodedData.items[n].snippet.description)
                url.append(decodedData.items[n].snippet.thumbnails.default.url)
                
            }

            let video = VideoModel(tittle: titulo, discription: descricao, url: url)
            
            return video
        }catch{
            print(error)
            return nil
        }
        
    }
    
}

//
//  VideoCell.swift
//  Mobile-MadeinWeb
//
//  Created by Paulo Danilo Conceição Lima on 16/08/21.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var imagemView: UIImageView!
    @IBOutlet weak var descView: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

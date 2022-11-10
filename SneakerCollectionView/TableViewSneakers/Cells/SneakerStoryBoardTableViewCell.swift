//
//  SneakerStoryBoardTableViewCell.swift
//  SneakerCollectionView
//
//  Created by Consultant on 11/3/22.
//

import UIKit

class SneakerStoryBoardTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var sneakerImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    func configure(imageName: String, sneakerName: String){
        self.sneakerImageView.image = UIImage(named: imageName)
        self.bottomLabel.text = sneakerName
        self.topLabel.text = "500"
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        self.topLabel.text = "\(Int(sender.value * 5000))"
        
        
    }
    
}

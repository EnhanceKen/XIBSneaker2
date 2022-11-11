//
//  SneakerXIBTableViewCell.swift
//  SneakerCollectionView
//
//  Created by Consultant on 11/4/22.
//

import UIKit

class SneakerXIBTableViewCell: UITableViewCell {


    @IBOutlet weak var sneakerImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    

        
    
    func configure(imageName: String, sneakerName: String){
        self.sneakerImageView.image = UIImage(named: imageName)
        self.bottomLabel.text = sneakerName
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let value = Int(sender.value * 10000)
        self.topLabel.text = "\(value)"
    }
    

    
}

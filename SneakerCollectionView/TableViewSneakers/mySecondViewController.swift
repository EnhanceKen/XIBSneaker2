//
//  mySecondViewController.swift
//  SneakerCollectionView
//
//  Created by Consultant on 11/10/22.
//

import UIKit

class mySecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    var myString: String? = ""
    var myimage: UIImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = myString
        myImage.image = myimage
        
        myLabel.lineBreakMode = NSLineBreakMode.byCharWrapping
    
    
    }
    

  
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

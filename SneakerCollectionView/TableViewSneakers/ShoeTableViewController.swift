//
//  ShoeTableViewController.swift
//  SneakerCollectionView
//
//  Created by Consultant on 11/3/22.
//

import UIKit
// added UITableViewDelegate
class ShoeTableViewController: UIViewController {

    
    @IBOutlet weak var SneakerTableView: UITableView!
    
    
    
    var data: [String] = ["Yeezy Wave Runner 700 Solid Grey", "Nike PG6 Painted Swoosh", "Air Jordan 1 Retro High OG Chicago Reimagined", "Converse Chuck Taylor All Star 70s", "Nike Air Max 1 PRM Somos Familia", "Air Jordan 4 Retro SE Black Canvas Product", "Nike Air Max Plus Black Blue Red", "Air Jordan 4 Retro", "Crocs Classic Clog Lightning McQueen Product", "Air Jordan 7 Retro Trophy Room", "Air Jordan 5 Retro DJ Khaled We The Best Crimson Bliss", "Nike Air Max 98 TL Supreme White", "Nike Dunk Low Florida AM", "Air Jordan 1 Retro Low OG SP Travis Scott Reverse Mocha", "Air Jordan 1 Retro Low OG Zion Williamson Voodoo", "Air Jordan 4 Retro Military Black GS Product", "Nike Air Force 1 Low Supreme Flax Product", "Nike Air Max 97 OG Silver Bullet 2022", "Air Jordan 11 Retro Cool Grey 2021", "Nike Hot Step Air Terra x Drake", "Air Jordan 4 Retro Lightning"]
    var img : [String] = ["YeezyWaveRunner700SolidGrey", "NikePG6PaintedSwooshProduct", "AirJordan1RetroHighOGChicagoReimagined", "ConverseChuckTaylorAllStar70s", "Nike-Air-Max-1-PRM-Somos-Familia-Updated", "Air-Jordan-4-Retro-SE-Black-Canvas-Product", "Nike-Air-Max-Plus-Black-Blue-Red", "Air-Jordan-4-Retro-Canvas-Sail-W-Product", "Crocs-Classic-Clog-Lightning-McQueen-Product", "Air-Jordan-7-Retro-Trophy-Room", "Air-Jordan-5-Retro-DJ-Khaled-We-The-Best-Crimson-Bliss", "Nike-Air-Max-98-TL-Supreme-White", "Nike-Dunk-Low-Florida-A-M", "Air-Jordan-1-Retro-Low-OG-SP-Travis-Scott-Reverse-Mocha_V2-Product", "Air-Jordan-1-Retro-Low-OG-Zion-Williamson-Voodoo", "Air-Jordan-4-Retro-Military-Black-GS-Product", "Nike-Air-Force-1-Low-Supreme-Flax-Product", "Nike-Air-Max-97-OG-Silver-Bullet-2022", "Air-Jordan-11-Retro-Cool-Grey-2021-Product", "Nike-Hot-Step-Air-Terra-Drake-NOCTA-Black-Product", "Air-Jordan-4-Retro-Lightning-2021-Product"]
    
    //Delete This if it doesnt work
 
    
    
    
    
    
    // Code check point
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
     
    }
    
    func setupUI() {
        self.SneakerTableView.dataSource = self
        self.SneakerTableView.delegate = self
        self.SneakerTableView.register(UINib(nibName: "SneakerXIBTableViewCell", bundle: nil), forCellReuseIdentifier: "SneakerXIBTableViewCell")
    }

}


extension ShoeTableViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count+10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Cell entering screen: \(indexPath.row % 34 )")
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SneakerXIBTableViewCell", for: indexPath) as? SneakerXIBTableViewCell
        else{
            return UITableViewCell()
        }
        
    
        //xcode suggested Forced unwrap and the end of random element
        
        cell.sneakerImageView.image = UIImage(named: self.img[indexPath.row % img.count])
        cell.topLabel.text = "0"
        cell.bottomLabel.text = self.data[indexPath.row % data.count]
        cell.bottomLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.bottomLabel.numberOfLines = 0
        
        return cell
    }
   

}
extension ShoeTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("this is the path\(indexPath)")
        
        self.performSegue(withIdentifier: "DetailViewController", sender: self)

    }
}
   


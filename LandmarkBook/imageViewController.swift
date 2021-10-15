//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Beytullah Özer on 14.10.2021.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var metinLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    var selectedLandmarkMetin = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        metinLabel.text = selectedLandmarkMetin
        
    }
    
    
    
}

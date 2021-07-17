//
//  ViewControllerImage.swift
//  markBooks
//
//  Created by Hüseyin Özdemir on 16.07.2021.
//

import UIKit


class ViewControllerImage: UIViewController {
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedName
        image.image = selectedImage
        

       
    


    }
}

//
//  ViewController1.swift
//  countryApi
//
//  Created by R82 on 31/03/23.
//

import UIKit

class ViewController1: UIViewController {

    
    @IBOutlet weak var imageview1: UIImageView!
        @IBOutlet weak var imageview2: UIImageView!
        @IBOutlet weak var label1: UILabel!
        @IBOutlet weak var label2: UILabel!
    
    var label11 = ""
    var label21 = ""
    var img1 = UIImage()
    var img2 = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        label1.text = label11
        label2.text = label21
        imageview1.image = img1
        imageview2.image = img2

        // Do any additional setup after loading the view.
    }
    
        
        
     
            


}

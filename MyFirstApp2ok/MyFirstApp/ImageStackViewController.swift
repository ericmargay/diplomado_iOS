//
//  ImageStackViewController.swift
//  MyFirstApp
//
//  Created by JohnLC on 29/09/23.
//

import UIKit

class ImageStackViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = UIImage(named: "Jefe1")
        // Do any additional setup after loading the view.
    }
    

}

//
//  ImageStackViewController.swift
//  MyFirstApp
//
//  Created by Swift on 29/09/23.
//

import UIKit

class ImageStackViewController: UIViewController {
    
    var showCat = false

    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var thridImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if showCat{
            firstImageView.image = UIImage(named: "images-2")
            secondImage.image = UIImage(named: "images-3")
            thridImage.image = UIImage(named: "images-4")
        }else{
            
            firstImageView.image = UIImage(named: "dog-1")
            secondImage.image = UIImage(named: "dog-2")
            thridImage.image = UIImage(named: "dog-3")
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

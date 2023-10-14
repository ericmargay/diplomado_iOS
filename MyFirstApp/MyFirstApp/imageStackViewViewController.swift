//
//  imageStackViewViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit

class imageStackViewViewController: UIViewController {
    var showCat = false
//    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var firstCaptionedImage: CaptionedImage!
    @IBOutlet weak var secondCaptionedImage: CaptionedImage!
    @IBOutlet weak var thirdCaptionedImage: CaptionedImage!


    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showCat {
            firstCaptionedImage.image.image = UIImage(named: "cat-1")
            firstCaptionedImage.captionLabel.text = "cat-1"
            secondCaptionedImage.image.image = UIImage(named: "cat-2")
            thirdCaptionedImage.image.image = UIImage(named: "cat-3")
        } else {
            firstCaptionedImage.image.image = UIImage(named: "dog-1")
            secondCaptionedImage.image.image = UIImage(named: "dog-2")
            thirdCaptionedImage.image.image = UIImage(named: "dog-3")
        }
//        firstImageView.image = UIImage(named: "images-2")
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

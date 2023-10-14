//
//  ImageStackViewController.swift
//  MyFirstApp
//
//  Created by Swift on 29/09/23.
//

import UIKit

class ImageStackViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = UIImage(named: "dog-2")
        
//        Gracias a que tenemos el outlet podemos acceder a los métodos y propiedades

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

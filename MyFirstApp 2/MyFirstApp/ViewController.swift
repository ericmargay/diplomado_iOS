//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Swift on 22/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1")
        
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        Cuando la lista ya está lista para ser mostrada,
        super.viewDidAppear(animated)
        print("2")

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("4")
    }
    
    
    
    
}


//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Swift on 22/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var titleTextField: UITextField! {
        didSet{
            titleTextField.delegate = self
        }
    }
    @IBOutlet weak var titleBar: UILabel!
    
    @IBOutlet weak var sendTitleBar: UILabel!
    @IBOutlet weak var sendTitleSwitch: UISwitch!

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? ImageStackViewController else {return}
        destinationViewController.showCat = photoTypeSwitch.isOn
        destinationViewController.title = titleTextField.text
    }

    // Son etiquetas para mostrar que algo está ligado
    @IBAction func nextButtonTapped(_ sender: UIButton ){
        print(photoTypeSwitch.isOn)
    }

    @IBAction func photoTypeSwitchTypeChanged(_ sender: UISwitch) {
        
        sender.isOn ? nextButton.setTitle("CAT", for: .normal): nextButton.setTitle("DOG", for: .normal)
    }
    
    @IBAction func titleTextFieldChanged(_ sender: UITextField) {
        titleBar.text = sender.text
    }
    
    @IBAction func sendTitleSwitchChanged(_ sender: UISwitch) {
        
        if sender.isOn{
            sendTitleBar.text = "[Se envia un titulo]"
        }else{
            sendTitleBar.text = "[No se envia un titulo]"
        }
        
       
    }
    
    
    
    
    
    
    
    
    
}

extension ViewController: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "" {return true}
        if string.rangeOfCharacter(from: .alphanumerics) == nil && string != " "{
            return false
        }else{
            return (textField.text?.count ?? 0)+string.count - range.length <= 10
        }
    }
    
}

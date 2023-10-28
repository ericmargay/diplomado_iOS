//
//  ViewController.swift
//  Tablas
//
//  Created by Diplomado on 27/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    let model = TableViewModel()
    
    @IBOutlet weak var textField: UITextField!

    @IBAction func addButton(_ sender: Any) {
        model.addRow(text: textField.text ?? "")
        tableView.reloadData()
    }

    
//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: "myCoolTableViewCell", bundle:nil ), forCellReuseIdentifier: "cell")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        3
        model.getSections()
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int ) -> String? {
//        "Pokemoncito"
        model.getSectionTitle()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
//        3
//        model.getCountArray()
        
//        switch section {
//        case 0: model.getCountArray()
//        case 1: 1
//        default: 2
//        }
        switch section {
        case 0: model.getCountArray()
        case 1: model.getCountArray()
        default: model.getCountArray()
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? myCoolTableViewCell

//        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//            cell?.backgroundColor = .gray
//            cell?.accessoryType = .disclosureIndicator
//        }
            
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
//        cell?.textLabel?.text = "Holi"
        
        //Always to use another cell that Apple default nedd to REGISTER, 
//        cell?.textLabel?.text = model.getTitle(index: indexPath)
//        cell?.detailTextLabel?.text = "XD"
//        cell?.detailTextLabel?.text = model.getDescription(index: indexPath)
        switch indexPath.section {
        case 0: cell?.backgroundColor = .orange
        case 1: cell?.backgroundColor = .blue
        default: cell?.backgroundColor = .purple
        }
        
        cell?.myTitle.text = model.getTitle(index: indexPath)
        cell?.mySubTitle.text = model.getDescription(index: indexPath)
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        150.0
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: 100
        case 1: 150
        default: 200
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(model.getTitle(index: indexPath))
//        performSegue(withIdentifier: "TabletoNext", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        "Delete"
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Llegue aqui")
            //delete the cell
            model.deleteRow(index: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        }
    }
}

//
//  TableViewModel.swift
//  Tablas
//
//  Created by Diplomado on 27/10/23.
//

import Foundation
// Toda la informacion contenidoa

struct Rows {
    var title: String
    var description: String
}

class TableViewModel {
    var rowsArray : [Rows]
    
    init() {
        rowsArray = [Rows(title: "Pikachu", description: "Electrico"),
                     Rows(title: "Charmander", description: "Fuego"),
                     Rows(title: "Bulbasur", description: "Agua"),
            Rows(title: "Dragoncite", description: "Dragon")]
    }
    
    
    func getCountArray() -> Int {
        rowsArray.count
    }
    
    func getTitle(index: IndexPath) -> String {
        rowsArray[index.row].title
    }
    
    func getDescription(index: IndexPath) -> String {
        rowsArray[index.row].description
    }
    
    func getSections() -> Int {
        3
    }
    
    func getSectionTitle() -> String {
        "Pokemon"
    }
    
    func addRow(text: String) {
        rowsArray.append(Rows(title: text, description: ""))
    }
    
    func deleteRow(index: Int) {
        rowsArray.remove(at: index)
    }
}

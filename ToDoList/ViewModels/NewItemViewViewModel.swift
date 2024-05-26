//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    
    init() {
        
    }
    
    func save() {
        
    }
}

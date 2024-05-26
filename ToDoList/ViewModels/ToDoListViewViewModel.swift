//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {
        
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("user_id")
            .collection("todos")
            .document(id)
            .delete()
    }
}

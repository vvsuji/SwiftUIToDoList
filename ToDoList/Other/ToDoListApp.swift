//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

//
//  ContentView.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import SwiftUI

struct MainView: View {
	@StateObject var viewModel = MainViewViewModel()
	
    var body: some View {
		if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
			TabView {
				ToDoListView()
					.tabItem {
						Label("Home", systemImage: "house")
					}
				
				ProfileView()
					.tabItem {
						Label("Profile", systemImage: "person.circle")
					}
			}
		} else {
			LoginView()
		}
    }
}

#Preview {
    MainView()
}

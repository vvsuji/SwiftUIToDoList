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
			//signed in
			ToDoListView()
		} else {
			LoginView()
		}
    }
}

#Preview {
    MainView()
}

//
//  ProfileView.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.purple)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Suji Falcon")
                    }
                    .padding()
                    
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("suji@vvsuji.dev")
                    }
                    .padding()
                    
                    HStack {
                        Text("Member since: ")
                            .bold()
                        Text("5/25/2024")
                    }
                    .padding()
                }
                
                // Sign out
                Button("Sign Out") {
                    viewModel.logOut()
                }
                .tint(.purple)
                .padding()
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}

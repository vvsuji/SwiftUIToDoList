//
//  LoginView.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
        // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .purple)
                
               
        // Login Form
        Form {
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundStyle(Color.red)
            }
            
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TLButton(title: "Log In", background: .purple) {
                viewModel.login()
            }
        }
        .offset(y: -50)
        // Create Account
        
        VStack {
            Text("Don't have an account?")
            NavigationLink("Create An Account", destination: RegisterView())
        }
        .padding(.bottom, 50)
        
        Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

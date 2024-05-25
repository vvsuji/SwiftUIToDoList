//
//  RegisterView.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing!", angle: -15, background: .purple)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())  
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", background: .purple) {
                    // Attempt log in
                }
            }
            .offset(y: -50)
             
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

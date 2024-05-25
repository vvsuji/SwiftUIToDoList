//
//  TLButton.swift
//  ToDoList
//
//  Created by Suji Falcon on 5/25/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .purple) {
        // Action
    }
}

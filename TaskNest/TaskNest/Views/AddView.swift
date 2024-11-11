//
//  AddView.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import SwiftUI

struct AddView: View {
    @State var textFieldInput: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here", text: $textFieldInput)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                
                Button(action: {}, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }
            .padding(15)
        }
        .navigationTitle("Add an item 📝")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}

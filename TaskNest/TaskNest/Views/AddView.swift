//
//  AddView.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var listViewModel : ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldInput: String = ""
    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here", text: $textFieldInput)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                
                Button(action: saveBtnPressed, label: {
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
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveBtnPressed() {
        if textIsValid() {
            listViewModel.addItem(title: textFieldInput)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsValid() -> Bool {
        if textFieldInput.count < 3{
            alertTitle = "Todo item must be at least 3 charecters long!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}

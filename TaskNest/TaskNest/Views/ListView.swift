//
//  ListView.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
    ItemModel(title: "This is the first title", isCompleted: false),
    ItemModel(title: "This is the second title", isCompleted: true),
    ItemModel(title: "This is the third title", isCompleted: false)
    ]
    var body: some View {
        List{
            ForEach(items){ item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📋")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
    }
}

extension ListView{
    //View Part
    
    //Methods
    
}

#Preview {
    NavigationView{
        ListView()
    }
}



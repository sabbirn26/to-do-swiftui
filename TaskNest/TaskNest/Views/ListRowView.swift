//
//  ListRowView.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import SwiftUI

struct ListRowView : View {
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 6)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        let item1 = ItemModel(title: "This is the demo1 title", isCompleted: false)
        let item2 = ItemModel(title: "This is the demo2 title", isCompleted: true)
        let item3 = ItemModel(title: "This is the demo3 title", isCompleted: false)
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
        .previewLayout(.sizeThatFits)
    }
}


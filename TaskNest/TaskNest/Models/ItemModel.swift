//
//  ItemModel.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

//
//  TaskNestApp.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 11/11/24.
//

import SwiftUI
/*
 MVVM Arch
 Model - data point
 View - UI/Screen
 ViewModel - manages models for view
 */
@main
struct TaskNestApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}

//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Санжар Асанов on 28/3/23.
//

import SwiftUI

/*
 MVVVM Architacture
 
 Model - data point
 View - UI
 ViewModel - managers Models for View
 
 */

@main
struct ToDoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}

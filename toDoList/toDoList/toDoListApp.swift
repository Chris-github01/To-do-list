//
//  toDoListApp.swift
//  toDoList
//
//  Created by Christopher Knight on 2023/02/27.
//

import SwiftUI

@main
struct toDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                listView()
            }
            .environmentObject(listViewModel)
        }
    }
}

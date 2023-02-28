//
//  ItemModel.swift
//  toDoList
//
//  Created by Christopher Knight on 2023/02/27.
//

import Foundation
import Combine

class ItemModel: Identifiable {
    let id: String
    let title: String
    var isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}

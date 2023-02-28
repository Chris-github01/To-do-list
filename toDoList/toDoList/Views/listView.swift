//
//  listView.swift
//  toDoList
//
//  Created by Christopher Knight on 2023/02/27.
//

import SwiftUI

struct listView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            item.isCompleted.toggle()
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To-do List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            listView()
        }
        .environmentObject(ListViewModel())
    }
}



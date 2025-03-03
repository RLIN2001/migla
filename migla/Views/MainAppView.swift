//
//  MainAppView.swift
//  migla
//
//  Created by Riccardo Lin on 23/02/25.
//
import SwiftUI
import SwiftData

struct MainAppView: View {
    @Environment(\.modelContext) var modelContext
    @Query var items: [Item]

       @State private var isAuthenticated = false
       
       var body: some View {
           Group {
               if isAuthenticated {
                   NavigationSplitView {
                       List {
                           ForEach(items) { item in
                               NavigationLink {
                                   Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                               } label: {
                                   Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                               }
                           }
                           .onDelete(perform: deleteItems)
                       }
                       .toolbar {
                           ToolbarItem(placement: .navigationBarTrailing) {
                               EditButton()
                           }
                           ToolbarItem {
                               Button(action: addItem) {
                                   Label("Add Item", systemImage: "plus")
                               }
                           }
                       }
                   } detail: {
                       Text("Select an item")
                   }
               } else {
                   LoginView()
               }
           }
       }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

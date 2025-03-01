//
//  ContentView.swift
//  migla
//
//  Created by Riccardo Lin on 01/03/25.
//


import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        LoginView();
    }
}



#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

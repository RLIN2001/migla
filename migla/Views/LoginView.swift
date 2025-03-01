//
//  LoginView.swift
//  migla
//
//  Created by Riccardo Lin on 23/02/25.
//
import SwiftUI
import SwiftData


struct LoginView: View {
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(10)
            Text("Please log in to continue")
                .font(.headline)
            Button("Log In") {
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow.opacity(0.4))
        .cornerRadius(10)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

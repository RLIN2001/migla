//
//  Home.swift
//  migla
//
//  Created by Riccardo Lin on 09/03/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 60)
                
                Text("Stai al passo con i progressi di\ntuo figlio!")
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                Image("girl")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.vertical)
                
                Text("Yume sato")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom)
            }
            .background(Color.blue.opacity(0.2))
            
            VStack(spacing: 15) {
                MenuItemView(
                    icon: "face.smiling",
                    title: "Foto e video",
                    backgroundColor: Color.brown.opacity(0.2)
                )
                
                MenuItemView(
                    icon: "newspaper",
                    title: "Report maestra",
                    backgroundColor: Color.blue.opacity(0.2)
                )
                
                MenuItemView(
                    icon: "envelope",
                    title: "Notifiche",
                    backgroundColor: Color.gray.opacity(0.2)
                )
                
                Spacer()
            }
            .padding(.top, 20)
            .padding(.horizontal)
            .background(Color(UIColor.systemYellow).opacity(0.1))
        }
        .ignoresSafeArea()
    }
}

struct MenuItemView: View {
    let icon: String
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {
        }) {
            HStack {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 30)
                
                Text(title)
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.black.opacity(0.5))
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(15)
        }
    }
}

#Preview {
    HomeView()
}

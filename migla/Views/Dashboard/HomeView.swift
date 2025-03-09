//
//  Home.swift
//  migla
//
//  Created by Riccardo Lin on 09/03/25.
//

import SwiftUI

struct HomeView: View {
    @State private var showDrawer = false
    
    var body: some View {
        NavigationStack {
        ZStack {
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Button(action: {
                            withAnimation {
                                showDrawer.toggle()
                            }
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
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 15) {
                        
                        NavigationLink(destination: GalleryView().navigationBarBackButtonHidden(false)) {
                            MenuItemView(
                                icon: "face.smiling",
                                title: "Foto e video",
                                backgroundColor: Color.brown.opacity(0.2)
                            )}
                        
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
                        
                        ForEach(0..<5) { _ in
                            MenuItemView(
                                icon: "star",
                                title: "Additional Item",
                                backgroundColor: Color.purple.opacity(0.2)
                            )
                        }
                        
                        Spacer(minLength: 20)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal)
                }
                .background(Color(UIColor.systemYellow).opacity(0.1))
            }
            .ignoresSafeArea()
            
            if showDrawer {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            showDrawer = false
                        }
                    }
                
                DrawerView(isOpen: $showDrawer)
                    .transition(.move(edge: .leading))
            }
        }
        }
    }
}

struct MenuItemView: View {
    let icon: String
    let title: String
    let backgroundColor: Color
    
    var body: some View {
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

struct DrawerView: View {
    @Binding var isOpen: Bool
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 15) {
                    Image("girl")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                    
                    Text("Yume sato")
                        .font(.title3)
                        .fontWeight(.medium)
                    Text("yuji.sato@shadapps.it")
                        .font(.body)
                        .fontWeight(.medium)
                    
                }
                .padding(.vertical, 20)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.blue.opacity(0.1))
                
                VStack(spacing: 0) {
                    
                    NavigationLink(destination: GalleryView().navigationBarBackButtonHidden(false)
                    ) {
                        DrawerMenuItem(icon: "photo.on.rectangle", title: "Gallery")
                        }
                    
                    DrawerMenuItem(icon: "envelope", title: "Notification")
                    DrawerMenuItem(icon: "gearshape", title: "Settings")
                }
                .padding(.top)
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width * 0.75)
            .background(Color.white)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
}

struct DrawerMenuItem: View {
    let icon: String
    let title: String
    
    var body: some View {
        Button(action: {
        }) {
            HStack(spacing: 15) {
                Image(systemName: icon)
                    .font(.title3)
                    .frame(width: 24)
                
                Text(title)
                    .font(.body)
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.vertical, 12)
        }
    }
}

#Preview {
    HomeView()
}

//
//  StartedView.swift
//  migla
//
//  Created by Riccardo Lin on 08/03/25.
//

//
//  LoginView.swift
//  migla
//
//  Created by Riccardo Lin on 23/02/25.
//
import SwiftUI
import SwiftData


struct StartedView: View {
    @State private var showLoginView = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.1))
                            .frame(width: 200, height: 300)
                            .offset(x: -100, y: -50)
                        
                        Circle()
                            .fill(Color.blue.opacity(0.1))
                            .frame(width: 300, height: 200)
                            .offset(x: -50, y: -100)
                    }
                    Spacer()
                }
                Spacer()
            }
            
            VStack(spacing: 20) {
                Spacer()
                
                Image("undraw_done_checking_re_6vyx 1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("Gets things with TODs")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        showLoginView = true
                    }
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemYellow).opacity(0.2))
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showLoginView) {
            LoginView()
                .transition(.move(edge: .trailing))
        }
        .interactiveDismissDisabled()
    }
}

#Preview {
    StartedView()
}

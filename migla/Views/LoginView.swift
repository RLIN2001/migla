//
//  RegisterView.swift
//  migla
//
//  Created by Riccardo Lin on 09/03/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
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
                
                VStack(spacing: 25) {
                    Text("Welcome back")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 50)
                    
                    Image("welcome_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.vertical, 20)
                    
                    VStack(spacing: 20) {
                        TextField("Email", text: $email)
                            .textFieldStyle(CustomTextFieldStyle())
                            .autocapitalization(.none)
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(CustomTextFieldStyle())
                    }
                    .padding(.horizontal, 20)
                    
                    Button(action: {
                    }) {
                        Text("Forget password ?")
                            .foregroundColor(.blue)
                    }
                    
                    Button(action: {
                    }) {
                        NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.7))
                                .cornerRadius(10)
                        }
                     
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {
                            dismiss()
                        }) {
                            NavigationLink(destination: RegistrationView().navigationBarBackButtonHidden(true)) {
                                Text("Sign Up")
                                    .foregroundColor(.blue)
                            }
                           
                        }
                    }
                    .padding(.top, 10)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor.systemYellow).opacity(0.1))
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(32)
    }
}

#Preview {
    LoginView()
}



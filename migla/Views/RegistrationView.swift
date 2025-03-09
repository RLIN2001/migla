//
//  LoginView.swift
//  migla
//
//  Created by Riccardo Lin on 23/02/25.
//
import SwiftUI
import SwiftData

struct RegistrationView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
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
                    Spacer()
                        .frame(height: 60)
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                    
                    Text("Welcome to MIGLA!")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Let's be together in your child's progress")
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                    
                    
                    VStack(spacing: 15) {
                        TextField("Nome e cognome genitore", text: $fullName)
                            .textFieldStyle(RoundedTextFieldStyle())
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedTextFieldStyle())
                            .autocapitalization(.none)
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedTextFieldStyle())
                        
                        SecureField("Conferma password", text: $confirmPassword)
                            .textFieldStyle(RoundedTextFieldStyle())
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    Button(action: {
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.7))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Already have an account?")
    
                        NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                            Text("Sign In")
                                .foregroundColor(.blue)
                        }
                 
                    }
                    .padding(.vertical)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor.systemYellow).opacity(0.1))
            .ignoresSafeArea()
        } }
}

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.white)
            .cornerRadius(32)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    RegistrationView()
}

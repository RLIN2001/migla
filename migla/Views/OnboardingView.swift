//
//  OnboardingView.swift
//  migla
//
//  Created by Riccardo Lin on 23/02/25.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false

    var body: some View {
        VStack {
            Spacer()
            Text("Gets things with TODs")
                .font(.title)
                .bold()

            Text("Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.")
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            Button(action: {
                hasSeenOnboarding = true
            }) {
                Text("Get Started")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
        }
        .padding()
        .background(Color.yellow.ignoresSafeArea())
    }
}

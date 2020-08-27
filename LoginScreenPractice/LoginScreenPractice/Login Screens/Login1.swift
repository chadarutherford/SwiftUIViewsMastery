//
//  Login1.swift
//  LoginScreenPractice
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct Login1: View {
	
	@State private var username = ""
	@State private var password = ""
	
    var body: some View {
		ZStack {
			Color.themeBackground
				.edgesIgnoringSafeArea(.all)
			
			VStack(spacing: 20) {
				Text("Login Screen 1")
					.foregroundColor(.themeForeground)
					.font(.largeTitle)
					.fontWeight(.medium)
				
				HStack {
					VStack {
						Rectangle()
							.frame(width: 30, height: 30)
						Rectangle()
							.frame(width: 30, height: 30)
					}
					
					VStack {
						Rectangle()
							.frame(width: 30, height: 30)
						Rectangle()
							.frame(width: 30, height: 30)
					}
				}
				.rotationEffect(.degrees(45))
				.foregroundColor(.themeSecondary)
				
				Spacer()
				
				TextField("Username:", text: $username)
					.textFieldStyle(RoundedBorderTextFieldStyle())
				
				SecureField("Password:", text: $password)
					.textFieldStyle(RoundedBorderTextFieldStyle())
				
				Spacer()
				
				Button(action: {}) {
					Text("Button")
						.foregroundColor(.white)
						.padding()
						.frame(width: 150)
						.background(
							Capsule()
						)
				}
				
				Button(action: {}) {
					Text("Forget password")
				}
			}
			.padding(.horizontal)
			.padding(.bottom)
		}
		.accentColor(.themeAccentColor)
    }
}

struct Login1_Previews: PreviewProvider {
    static var previews: some View {
        Login1()
			.preferredColorScheme(.dark)
    }
}

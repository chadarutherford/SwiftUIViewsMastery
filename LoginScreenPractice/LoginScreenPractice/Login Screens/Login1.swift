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
				Group {
					HStack {
						Image(systemName: "envelope.fill")
							.foregroundColor(.themeSecondary)
							.frame(width: 20)
						TextField("Username:", text: $username)
					}
					.padding(8)
					.background(
						RoundedRectangle(cornerRadius: 5)
							.stroke(Color.gray, lineWidth: 1)
							.opacity(0.3)
					)
						
					HStack {
						Image(systemName: "lock.shield.fill")
							.foregroundColor(.themeSecondary)
							.frame(width: 20)
						SecureField("Password:", text: $password)
					}
					.padding(8)
					.background(
						RoundedRectangle(cornerRadius: 5)
							.stroke(Color.gray, lineWidth: 1)
							.opacity(0.3)
					)
				}
				.frame(maxWidth: 400)
				
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
		Group {
			Login1()
				.preferredColorScheme(.dark)
			Login1()
				.previewDevice("iPad Pro (12.9-inch) (4th generation)")
		}
    }
}

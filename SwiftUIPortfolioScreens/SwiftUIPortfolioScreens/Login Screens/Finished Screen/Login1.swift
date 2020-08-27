//
//  Login1.swift
//  SwiftUIPortfolioScreens
//
//  Created by Chad Rutherford on 8/27/20.
//

import AuthenticationServices
import SwiftUI

struct Login1: View {
	
	@State private var loginMode = false
	@State private var email = ""
	@State private var username = ""
	@State private var password = ""
	
	
    var body: some View {
		ZStack {
			Color.themeBackground
				.edgesIgnoringSafeArea(.all)
			
			VStack {
				HStack {
					Spacer()
					if loginMode {
						RoundedRectangle(cornerRadius: 10, style: .continuous)
							.fill(Color.white)
							.opacity(0.1)
							.overlay(Text("Login"))
							.frame(width: 90, height: 90)
					} else {
						RoundedRectangle(cornerRadius: 10, style: .continuous)
							.fill(Color.themeBackground)
							.overlay(Text("Login"))
							.frame(width: 90, height: 90)
					}
					
					Spacer()
					if !loginMode {
						RoundedRectangle(cornerRadius: 10, style: .continuous)
							.fill(Color.white)
							.opacity(0.1)
							.overlay(Text("Register"))
							.frame(width: 90, height: 90)
					} else {
						RoundedRectangle(cornerRadius: 10, style: .continuous)
							.fill(Color.themeBackground)
							.overlay(Text("Register"))
							.frame(width: 90, height: 90)
					}
					Spacer()
				}
				
				Spacer()
				
				RoundedRectangle(cornerRadius: 15, style: .continuous)
					.frame(height: 340)
					.overlay(VStack {
						HStack {
							Image(systemName: "envelope.fill")
								.foregroundColor(.themeAccent)
								.frame(width: 20)
							CustomTextField(placeholder: Text("Email:").foregroundColor(Color(.darkGray)), text: $email)
						}
						.frame(height: 90)
						.padding(.horizontal)
						.background(
							Capsule()
								.fill(Color.black)
								.opacity(0.1)
								.frame(height: 60)
						)
						.padding(.horizontal)
						.padding(.top)
						
						HStack {
							Image(systemName: "person.circle.fill")
								.foregroundColor(.themeAccent)
								.frame(width: 20)
							CustomTextField(placeholder: Text("Username:").foregroundColor(Color(.darkGray)), text: $username)
						}
						.frame(height: 90)
						.padding(.horizontal)
						.background(
							Capsule()
								.fill(Color.black)
								.opacity(0.1)
								.frame(height: 60)
						)
						.padding(.horizontal)
						
						HStack {
							Image(systemName: "lock.shield.fill")
								.foregroundColor(.themeAccent)
								.frame(width: 20)
							CustomSecureField(placeholder: Text("Password:").foregroundColor(Color(.darkGray)), text: $password)
						}
						.frame(height: 90)
						.padding(.horizontal)
						.background(
							Capsule()
								.fill(Color.black)
								.opacity(0.1)
								.frame(height: 60)
						)
						.padding(.horizontal)
						
						Spacer()
						
						Button(action: {}) {
							Text("REGISTER")
								.font(.body)
								.fontWeight(.bold)
								.foregroundColor(.white)
						}
						.frame(width: 180, height: 40)
						.background(
							Capsule()
								.fill(Color.themeAccent)
						)
						.offset(y: 20)
					})
				
				
				Spacer()
				
				SignInWithAppleButton(.signIn,
									  onRequest: { request in },
									  onCompletion: { result in })
					.frame(width: 250, height: 60)
					.cornerRadius(30)
			}
			.padding(.horizontal)
			.padding(.vertical)
		}
    }
}

struct Login1_Previews: PreviewProvider {
    static var previews: some View {
        Login1()
			.preferredColorScheme(.dark)
    }
}

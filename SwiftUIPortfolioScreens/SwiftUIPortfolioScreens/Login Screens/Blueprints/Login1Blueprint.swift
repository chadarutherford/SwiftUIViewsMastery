//
//  Login1Blueprint.swift
//  SwiftUIPortfolioScreens
//
//  Created by Chad Rutherford on 8/27/20.
//

import SwiftUI

struct Login1Blueprint: View {
    var body: some View {
		VStack {
			HStack {
				Spacer()
				RoundedRectangle(cornerRadius: 15, style: .continuous)
					.fill(Color.secondary)
					.frame(width: 90, height: 90)
					.overlay(
						Text("Login")
					)
				
				Spacer()
				RoundedRectangle(cornerRadius: 15, style: .continuous)
					.fill(Color.secondary)
					.frame(width: 90, height: 90)
					.overlay(
						Text("Register")
					)
				Spacer()
			}
			
			Spacer()
			
			RoundedRectangle(cornerRadius: 20, style: .continuous)
				.fill(Color.secondary)
				.frame(height: 400)
				.overlay(VStack {
					Capsule()
						.fill(Color.secondary)
						.frame(height: 80)
						.overlay(Text("TextField"))
					Capsule()
						.fill(Color.secondary)
						.frame(height: 80)
						.overlay(Text("TextField"))
					Capsule()
						.fill(Color.secondary)
						.frame(height: 80)
						.overlay(Text("TextField"))
					
					Capsule()
						.fill(Color.secondary)
						.frame(width: 160, height: 40)
						.overlay(Text("Button"))
						.offset(y: 70)
				})
			
			Spacer()
			
			Capsule()
				.strokeBorder(
					style: StrokeStyle(
						lineWidth: 2,
						dash: [4]
					)
				)
				.frame(maxWidth: 250)
				.frame(height: 60)
				.overlay(Text("Login with Facebook or Apple"))
		}
		.padding(.horizontal)
    }
}

struct Login1Blueprint_Previews: PreviewProvider {
    static var previews: some View {
        Login1Blueprint()
    }
}

//
//  ContentView.swift
//  LayersMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			Text("Tiles - 1")
				.font(.largeTitle)
			
			Spacer()
			
			HStack {
				RoundedRectangle(cornerRadius: 25)
					.fill(Color.secondary)
					.overlay(Text("Title 1"))
				RoundedRectangle(cornerRadius: 25)
					.fill(Color.secondary)
					.overlay(Text("Title 2"))
			}
			.frame(height: 150)
			
			HStack {
				RoundedRectangle(cornerRadius: 25)
					.fill(Color.secondary)
					.overlay(Text("Title 3"))
				RoundedRectangle(cornerRadius: 25)
					.fill(Color.secondary)
					.overlay(Text("Title 4"))
			}
			.frame(height: 150)
		}
		.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

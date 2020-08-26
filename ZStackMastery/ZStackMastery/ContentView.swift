//
//  ContentView.swift
//  ZStackMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(.systemBlue)
				.edgesIgnoringSafeArea(.all)
			
			Text("Hello, World!")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

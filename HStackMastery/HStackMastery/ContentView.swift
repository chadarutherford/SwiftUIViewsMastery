//
//  ContentView.swift
//  HStackMastery
//
//  Created by Chad Rutherford on 8/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		HStack {
			Spacer()
			Circle()
				.frame(width: 50, height: 50)
			Spacer()
			Circle()
				.frame(width: 50, height: 50)
			Spacer()
			Circle()
				.frame(width: 50, height: 50)
			Spacer()
			Circle()
				.frame(width: 50, height: 50)
			Spacer()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

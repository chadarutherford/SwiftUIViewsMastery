//
//  LayersPractical.swift
//  LayersMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct LayersPractical: View {
    var body: some View {
		HStack(alignment: .top) {
			VStack(alignment: .leading) {
				Text("Title")
					.font(.largeTitle)
					.fontWeight(.bold)
				Text("Subtext")
					.font(.caption)
			}
			
			Circle()
				.fill(Color.secondary)
				.frame(width: 40, height: 40)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.padding()
		.background(
			RoundedRectangle(cornerRadius: 20)
				.fill(Color.secondary)
		)
    }
}

struct LayersPractical_Previews: PreviewProvider {
    static var previews: some View {
        LayersPractical()
    }
}

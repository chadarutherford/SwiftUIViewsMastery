//
//  ZStackPractice.swift
//  ZStackMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct ZStackPractice: View {
    var body: some View {
		ZStack {
			Color.secondary
				.edgesIgnoringSafeArea(.all)
			
			VStack(alignment: .leading, spacing: 20) {
				Text("Title")
					.font(.largeTitle)
				
				HStack(spacing: 20) {
					RoundedRectangle(cornerRadius: 15)
						.fill(Color.secondary)
					RoundedRectangle(cornerRadius: 15)
						.fill(Color.secondary)
				}
				
				RoundedRectangle(cornerRadius: 15)
					.fill(Color.secondary)
				
				Text("Subtext")
					.font(.title)
				
				HStack(spacing: 20) {
					RoundedRectangle(cornerRadius: 15)
						.fill(Color.secondary)
					RoundedRectangle(cornerRadius: 15)
						.fill(Color.secondary)
					RoundedRectangle(cornerRadius: 15)
						.fill(Color.secondary)
				}
				.frame(height: 100)
			}
			.padding(.horizontal)
		}
    }
}

struct ZStackPractice_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPractice()
    }
}

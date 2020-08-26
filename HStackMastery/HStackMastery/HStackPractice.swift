//
//  HStackPractice.swift
//  HStackMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct HStackPractice: View {
    var body: some View {
		VStack(spacing: 16) {
			Text("Discovery")
				.font(.largeTitle)
				.fontWeight(.bold)
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 10)
				RoundedRectangle(cornerRadius: 10)
			}
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 10)
				RoundedRectangle(cornerRadius: 10)
			}
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 10)
				RoundedRectangle(cornerRadius: 10)
			}
		}
		.padding(.horizontal)
    }
}

struct HStackPractice_Previews: PreviewProvider {
    static var previews: some View {
        HStackPractice()
    }
}

//
//  HStackBlueprint.swift
//  HStackMastery
//
//  Created by Chad Rutherford on 8/26/20.
//

import SwiftUI

struct HStackBlueprint: View {
    var body: some View {
		VStack {
			Spacer()
			HStack {
				VStack(alignment: .leading) {
					Text("Title")
						.font(.title)
						.fontWeight(.bold)
					Text("Subheading")
						.font(.title2)
				}
				Spacer()
			}
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 15)
				RoundedRectangle(cornerRadius: 15)
			}
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 15)
				RoundedRectangle(cornerRadius: 15)
			}
			
			HStack(spacing: 16) {
				RoundedRectangle(cornerRadius: 15)
				RoundedRectangle(cornerRadius: 15)
			}
			.padding(.bottom, 16)
			
			HStack {
				ForEach(Range(1 ... 3)) { _ in
					Spacer()
					RoundedRectangle(cornerRadius: 10)
						.frame(width: 50, height: 50)
				}
				Spacer()
			}
		}
		.padding(.horizontal)
    }
}

struct HStackBlueprint_Previews: PreviewProvider {
    static var previews: some View {
        HStackBlueprint()
    }
}

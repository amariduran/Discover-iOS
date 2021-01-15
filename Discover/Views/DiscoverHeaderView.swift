//
//  DiscoverHeaderView.swift
//  Discover
//
//  Created by Cleopatra on 1/7/21.
//

import SwiftUI

struct DiscoverHeaderView: View {
	let title: String
	
	var body: some View {
		HStack {
			Text(title)
				.font(.system(size: 14, weight: .semibold))
			
			Spacer()
			
			Text("See All")
				.font(.system(size: 12, weight: .semibold))
		}
		.padding(.horizontal)
		.padding(.top)
	}
}

struct DiscoverHeaderView_Previews: PreviewProvider {
	
	static var previews: some View {
		Group {
			DiscoverHeaderView(title: "Title")
				.previewLayout(.sizeThatFits)

			DiscoverView()
		}
		.previewDevice("iPhone 12 mini")
	}
}

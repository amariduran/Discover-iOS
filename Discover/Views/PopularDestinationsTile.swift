//
//  PopularDestinationTile.swift
//  Discover
//
//  Created by Cleopatra on 1/7/21.
//

import SwiftUI

struct PopularDestinationsTile: View {
	let destination: Destination
	
	var body: some View {
		VStack(alignment: .leading) {
			Image(destination.imageName)
				.resizable()
				.scaledToFill()
				.frame(width: 125, height: 125)
				.cornerRadius(4)
				.padding(.horizontal, 6)
				.padding(.vertical, 6)
			
			Text(destination.name)
				.font(.system(size: 12, weight: .semibold))
				.foregroundColor(Color(.label))
				.padding(.horizontal, 12)
			
			Text(destination.country)
				.font(.system(size: 12, weight: .semibold))
				.foregroundColor(.gray)
				.padding(.horizontal, 12)
				.padding(.bottom, 8)
		}
		.asTile()
		.padding(.top, 4)
		.padding(.bottom)
	}
}

struct PopularDestinationsTile_Previews: PreviewProvider {
	static let destination = Destination(name: "New York", country: "United States", imageName: "new_york")
	
	static var previews: some View {
		Group {
			PopularDestinationsTile(destination: destination)
				.previewLayout(.sizeThatFits)

			DiscoverView()
		}
		.previewDevice("iPhone 12 mini")
	}
}

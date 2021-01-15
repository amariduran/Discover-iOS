//
//  PopularDestinationsView.swift
//  Discover
//
//  Created by Cleopatra on 1/2/21.
//

import SwiftUI

struct PopularDestinationsView: View {
	
	let destinations: [Destination] = [
		Destination(name: "Paris", country: "France", imageName: "eiffel_tower"),
		Destination(name: "Tokyo", country: "Japan", imageName: "japan"),
		Destination(name: "New York", country: "US", imageName: "new_york"),
	]
	
	var body: some View {
		VStack {
			DiscoverHeaderView(title: "Popular Destinations")

			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 14) {
					ForEach(destinations, id: \.self) { destination in
						NavigationLink(
							destination: PopularDestinationDetailsView(destination: destination),
							label: {
								PopularDestinationsTile(destination: destination)
							}
						)
					}
				}
				.padding(.horizontal)
			}
		}
	}
}

struct PopularDestinationsView_Previews: PreviewProvider {
	
	static var previews: some View {
		Group {
			PopularDestinationsView()
				.previewLayout(.sizeThatFits)
			
			DiscoverView()
		}
		.previewDevice("iPhone 12 mini")
	}
}

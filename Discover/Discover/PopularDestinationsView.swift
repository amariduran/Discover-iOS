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
			HStack {
				Text("Popular Destinations")
					.font(.system(size: 14, weight: .semibold))

				Spacer()

				Text("See All")
					.font(.system(size: 12, weight: .semibold))
			}
			.padding(.horizontal)
			.padding(.top)

			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 14.0) {
					ForEach(destinations, id: \.self) { destination in
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
								.padding(.horizontal, 12)

							Text(destination.country)
								.font(.system(size: 12, weight: .semibold))
								.padding(.horizontal, 12)
								.padding(.bottom, 8)
								.foregroundColor(.gray)
						}
						.asTile()
						.padding(.top, 4)
						.padding(.bottom)
					}
				}
				.padding(.horizontal)
			}
		}
	}
}

#if DEBUG
struct PopularDestinationsView_Previews: PreviewProvider {

	static var previews: some View {
		PopularDestinationsView()
			.previewLayout(.sizeThatFits)
			.previewDevice("iPhone 12 mini")

		DiscoverView()
			.previewDevice("iPhone 12 mini")
	}
}
#endif

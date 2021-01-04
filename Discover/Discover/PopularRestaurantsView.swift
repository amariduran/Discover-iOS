//
//  PopularRestaurantsView.swift
//  Discover
//
//  Created by Cleopatra on 1/2/21.
//

import SwiftUI

struct PopularRestaurantsView: View {

	let restaurants: [Restaurant] = [
		Restaurant(name: "Japan's Finest Tapas", imageName: "tapas"),
		Restaurant(name: "Bar & grill", imageName: "bar_grill")
	]

	var body: some View {
		VStack {
			HStack {
				Text("Popular Restaurants")
					.font(.system(size: 14, weight: .semibold))

				Spacer()

				Text("See All")
					.font(.system(size: 12, weight: .semibold))
			}
			.padding(.horizontal)
			.padding(.top)

			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 14) {
					ForEach(restaurants, id: \.self) { restaurant in
						HStack(spacing: 8) {
							Image(restaurant.imageName)
								.resizable()
								.scaledToFill()
								.frame(width: 60, height: 60)
								.clipped()
								.cornerRadius(5)
								.padding(.leading, 6)
								.padding(.vertical, 6)

							VStack(alignment: .leading, spacing: 4) {
								HStack {
									Text(restaurant.name)
									Spacer()
									Button(action: {}, label: {
										Image(systemName: "ellipsis")
											.foregroundColor(.gray)
									})
								}
								
								HStack {
									Image(systemName: "star.fill")
									Text("4.7 • Sushi • $$")
								}
								
								Text("Tokyo, Japan")
							}
							.font(.system(size: 12, weight: .semibold))
							
							Spacer()
						}
						.frame(width: 240)
						.modifier(TileModifier())
						.padding(.bottom)
					}
				}
				.padding(.horizontal)
				.padding(.top, 4)
			}
		}
	}
}

#if DEBUG
struct PopularRestaurantsView_Previews: PreviewProvider {
	
	static var previews: some View {
		PopularRestaurantsView()
			.previewLayout(.sizeThatFits)
			.previewDevice("iPhone 12 mini")
		
		DiscoverView()
			.previewDevice("iPhone 12 mini")
	}
}
#endif

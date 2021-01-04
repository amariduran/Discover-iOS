//
//  DiscoverView.swift
//  Discover
//
//  Created by Cleopatra on 1/2/21.
//

import SwiftUI

struct DiscoverView: View {
	
	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [
			.foregroundColor: UIColor.white
		]
	}
	
	var body: some View {
		NavigationView {
			ZStack {
				LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))]),
											 startPoint: .top,
											 endPoint: .center)
					.ignoresSafeArea()

				Color.discoverBackground
					.offset(y: 500)
				
				ScrollView(showsIndicators: false) {
					HStack {
						Image(systemName: "magnifyingglass")
						Text("Where do you want to go?")
						Spacer()
					}
					.font(.system(size: 14, weight: .semibold))
					.foregroundColor(.white)
					.padding()
					.background(Color(white: 1, opacity: 0.3))
					.cornerRadius(10)
					.padding(16)
					
					DiscoverCategoriesView()
					
					VStack {
						PopularDestinationsView()
						PopularRestaurantsView()
						TrendingCreatorsView()
					}
					.background(Color.discoverBackground)
					.cornerRadius(16)
					.padding(.top, 32)
				}
			}
			.navigationTitle("Discover")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	
	static var previews: some View {
		DiscoverView()
			.previewDevice("iPhone 12 mini")
	}
}

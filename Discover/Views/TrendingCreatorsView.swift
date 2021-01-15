//
//  TrendingCreatorsView.swift
//  Discover
//
//  Created by Cleopatra on 1/3/21.
//

import SwiftUI

struct TrendingCreatorsView: View {
	
	let users: [User] = [
		User(name: "Amy Adams", imageName: "amy"),
		User(name: "Billy Adams", imageName: "billy"),
		User(name: "Sam Smith", imageName: "sam")
	]
	
	var body: some View {
		VStack {
			HStack {
				Text("Trending Creators")
					.font(.system(size: 14, weight: .semibold))
				Spacer()
				Text("See All")
					.font(.system(size: 12, weight: .semibold))
			}
			.padding(.horizontal)
			.padding(.top)
			
			ScrollView(.horizontal) {
				HStack(alignment: .top, spacing: 12) {
					ForEach(users, id: \.self) { user in
						VStack {
							Image(user.imageName)
								.resizable()
								.scaledToFill()
								.frame(width: 60, height: 60)
								.cornerRadius(60)
							Text(user.name)
								.font(.system(size: 11, weight: .semibold))
								.multilineTextAlignment(.center)
						}
						.frame(width: 60)
						.shadow(color: .gray, radius: 4, x: 0, y: 2)
						.padding(.bottom)
					}
				}
				.padding(.horizontal)
				.padding(.top, 4)
			}
		}
	}
}

struct TrendingCreatorsView_Previews: PreviewProvider {
	
	static var previews: some View {
		Group {
			TrendingCreatorsView()
				.previewLayout(.sizeThatFits)

			DiscoverView()
		}
		.previewDevice("iPhone 12 mini")
	}
}

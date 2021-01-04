//
//  DiscoverCategoriesView.swift
//  Discover
//
//  Created by Cleopatra on 1/2/21.
//

import SwiftUI

struct DiscoverCategoriesView: View {

	let categories: [Category] = [
		Category(name: "Art", imageName: "paintpalette.fill"),
		Category(name: "Sport", imageName: "sportscourt.fill"),
		Category(name: "Live Events", imageName: "music.mic"),
		Category(name: "Food", imageName: "tray.fill"),
		Category(name: "History", imageName: "books.vertical.fill")
	]

	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .top, spacing: 14) {
				ForEach(categories, id: \.self) { category in
					NavigationLink(
						destination: CategoryDetailsView(),
						label: {
							VStack(spacing: 8) {
								Image(systemName: category.imageName)
									.frame(width: 70, height: 70)
									.font(.system(size: 24))
									.foregroundColor(Color(#colorLiteral(red: 0.9495152831, green: 0.624034822, blue: 0.2049600482, alpha: 1)))
									.background(Color.white)
									.cornerRadius(70)
								
								Text(category.name)
									.font(.system(size: 12, weight: .semibold))
									.multilineTextAlignment(.center)
									.foregroundColor(.white)
							}
						}
					)
				}
			}
			.padding(.horizontal)
			.padding(.top, 4)
		}
	}
}

struct CategoryDetailsView: View {
	var body: some View {
		ScrollView {
			ForEach(0..<5, id: \.self) { num in
				VStack(alignment: .leading, spacing: 0) {
					Image("art1")
						.resizable()
						.scaledToFill()
					Text("Hello")
						.font(.system(size: 12, weight: .semibold))
						.padding()
				}
				.asTile()
				.padding()
			}
		}
		.navigationBarTitle("Category", displayMode: .inline)
	}
}

struct DiscoverCategoriesView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			CategoryDetailsView()
		}
		
		DiscoverCategoriesView()
			.background(Color.orange)
			.previewLayout(.sizeThatFits)
			.previewDevice("iPhone 12 mini")
		DiscoverView()
			.previewDevice("iPhone 12 mini")
	}
}

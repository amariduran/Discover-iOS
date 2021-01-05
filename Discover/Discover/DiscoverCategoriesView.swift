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
		Category(name: "Sports", imageName: "sportscourt.fill"),
		Category(name: "Live Events", imageName: "music.mic"),
		Category(name: "Food", imageName: "tray.fill"),
		Category(name: "History", imageName: "books.vertical.fill")
	]

	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .top, spacing: 14) {
				ForEach(categories, id: \.self) { category in
					NavigationLink(
						destination: CategoryDetailsView(name: category.name),
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

#if DEBUG
struct DiscoverCategoriesView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			DiscoverCategoriesView()
				.background(Color(#colorLiteral(red: 0.9495152831, green: 0.624034822, blue: 0.2049600482, alpha: 1)))
				.previewLayout(.sizeThatFits)
			DiscoverView()
		}
		.previewDevice("iPhone 12 mini")
	}
}
#endif

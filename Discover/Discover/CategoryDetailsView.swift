//
//  CategoryDetailsView.swift
//  Discover
//
//  Created by Cleopatra on 1/4/21.
//

import SwiftUI
import Kingfisher

struct CategoryDetailsView: View {
	
	@ObservedObject var viewModel = CategoryDetailsViewModel()
	
	var body: some View {
		ZStack {
			if viewModel.isLoading {
				VStack {
					ActivityIndicatorView()
					Text("Loading...")
						.foregroundColor(.white)
						.font(.system(size: 16, weight: .semibold))
				}
				.padding()
				.background(Color.black)
				.cornerRadius(8)
			} else {
				ScrollView {
					ForEach(viewModel.places, id: \.self) { place in
						VStack(alignment: .leading, spacing: 0) {
							KFImage.url(URL(string: place.thumbnail))
								.resizable()
								.scaledToFill()
							Text(place.name)
								.font(.system(size: 12, weight: .semibold))
								.padding()
						}
						.asTile()
						.padding()
					}
				}
			}
		}
		.navigationBarTitle("Category", displayMode: .inline)
	}
}

#if DEBUG
struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
			Group {
				NavigationView {
					CategoryDetailsView()
				}
				DiscoverView()
			}
			.previewDevice("iPhone 12 mini")
    }
}
#endif

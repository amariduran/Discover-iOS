//
//  CategoryDetailsView.swift
//  Discover
//
//  Created by Cleopatra on 1/4/21.
//

import SwiftUI

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
			}
		}
		.navigationBarTitle("Category", displayMode: .inline)
	}
}

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailsView()
    }
}

struct ActivityIndicatorView: UIViewRepresentable {
	typealias UIViewType = UIActivityIndicatorView
	
	func makeUIView(context: Context) -> UIActivityIndicatorView {
		let activityIndicatorView = UIActivityIndicatorView(style: .large)
		activityIndicatorView.startAnimating()
		activityIndicatorView.color = .white
		return activityIndicatorView
	}
	
	func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
		
	}
}

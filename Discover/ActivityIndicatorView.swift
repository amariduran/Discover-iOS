//
//  View.swift
//  Discover
//
//  Created by Cleopatra on 1/4/21.
//

import SwiftUI

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

#if DEBUG
struct ActivityIndicatorPreview_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView()
    }
}
#endif

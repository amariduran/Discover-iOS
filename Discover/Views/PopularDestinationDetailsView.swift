//
//  PopularDestinationDetailsView.swift
//  Discover
//
//  Created by Cleopatra on 1/7/21.
//

import SwiftUI

struct PopularDestinationDetailsView: View {
	let destination: Destination
	
	var body: some View {
		ScrollView {
			Image(destination.imageName)
				.resizable()
				.scaledToFill()
				.frame(height: 200)
			
			VStack(alignment: .leading) {
				Text(destination.name)
				Text(destination.country)
				
				HStack {
					ForEach(0..<5, id: \.self) { num in
						Image(systemName: "star.fill")
							.foregroundColor(.orange)
					}
				}
				.padding(.top, 2)
				
				Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At urna condimentum mattis pellentesque id nibh tortor id. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Magna fermentum iaculis eu non diam phasellus vestibulum lorem sed. Ultrices sagittis orci a scelerisque purus semper eget duis at. Est ante in nibh mauris cursus mattis molestie. Quis ipsum suspendisse ultrices gravida dictum. Vitae congue eu consequat ac. Urna nunc id cursus metus aliquam eleifend mi in nulla. Metus dictum at tempor commodo ullamcorper. Ut aliquam purus sit amet luctus venenatis. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Proin nibh nisl condimentum id. Cursus eget nunc scelerisque viverra mauris in aliquam sem. Arcu ac tortor dignissim convallis aenean et. Amet risus nullam eget felis. Eleifend mi in nulla posuere. Fermentum et sollicitudin ac orci phasellus. Dignissim diam quis enim lobortis scelerisque.")
					.padding(.top, 8)
				
				HStack {
					Spacer()
				}
			}
			.padding(.horizontal)
			
		}.navigationBarTitle(destination.name, displayMode: .inline)
	}
}

struct PopularDestinationDetailsView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			PopularDestinationDetailsView(destination: Destination(name: "Paris", country: "France", imageName: "eiffel_towers"))
				.previewDevice("iPhone 12 mini")
		}
	}
}

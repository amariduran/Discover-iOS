//
//  TileModifier.swift
//  Discover
//
//  Created by Cleopatra on 1/3/21.
//

import SwiftUI

struct TileModifier: ViewModifier {
	
	func body(content: Content) -> some View {
		content
			.background(Color.white)
			.cornerRadius(5)
		
			// Find a better solution to add shadow.
//			.shadow(color: Color(.sRGB, white: 0.8, opacity: 1), radius: 4, x: 0, y: 2)
	}
}

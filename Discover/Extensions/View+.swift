//
//  View+.swift
//  Discover
//
//  Created by Cleopatra on 1/3/21.
//

import SwiftUI

extension View {

	func asTile() -> some View {
		modifier(TileModifier())
	}
}

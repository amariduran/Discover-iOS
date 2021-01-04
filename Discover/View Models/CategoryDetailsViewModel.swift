//
//  CategoryDetailsViewModel.swift
//  Discover
//
//  Created by Cleopatra on 1/4/21.
//

import SwiftUI

class CategoryDetailsViewModel: ObservableObject {
	
	@Published var isLoading = true
	@Published var places = [Int]()
	
	init() {
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			self.isLoading = false
			self.places = [1, 2, 3, 4, 5, 6, 7]
		}
	}
}

//
//  CategoryDetailsViewModel.swift
//  Discover
//
//  Created by Cleopatra on 1/4/21.
//

import SwiftUI

class CategoryDetailsViewModel: ObservableObject {

	@Published var isLoading = true
	@Published var places = [Place]()
	
	init() {
		let urlString = "https://travel.letsbuildthatapp.com/travel_discovery/category?name=art"
		
		guard let url = URL(string: urlString) else {
			return
		}
		
		URLSession.shared.dataTask(with: url) { data, response, error in
			guard let data = data else { return }
					
			DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
				self.isLoading = false
				
				do {
					self.places = try JSONDecoder().decode([Place].self, from: data)
				} catch {
					print("Failed to decode JSON: \(error)")
				}
			}
		}.resume()
	}
}

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
	
	init(name: String) {
		let urlString = "https://travel.letsbuildthatapp.com/travel_discovery/category?name=\(name.lowercased())"
			.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
		
		guard let url = URL(string: urlString) else {
			self.isLoading = false
			return
		}
		
		URLSession.shared.dataTask(with: url) { data, response, error in
			DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
				self.isLoading = false
				
				if let statusCode = (response as? HTTPURLResponse)?.statusCode,
					 statusCode >= 400 {
					return
				}
				
				guard let data = data else {
					return
				}
				
				do {
					self.places = try JSONDecoder().decode([Place].self, from: data)
				} catch {
					print("Failed to decode JSON: \(error)")
				}
			}
		}.resume()
	}
}

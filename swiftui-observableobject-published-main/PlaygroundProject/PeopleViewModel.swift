//
//  PeopleViewModel.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import Foundation

final class PeopleViewModel: ObservableObject {
    @Published var people: [String] = []
    @Published var isLoading = false
    
    func fetchPeople() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.people.append("Samet")
            self.isLoading = false
        }
    }
}

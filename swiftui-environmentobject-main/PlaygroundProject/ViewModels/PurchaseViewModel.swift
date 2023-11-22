//
//  PurchaseViewModel.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import Foundation

final class PurchaseViewModel: ObservableObject {
    
    @Published var hasPurchased: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.hasPurchased = true
            self?.isLoading = false
        }
    }
    
}

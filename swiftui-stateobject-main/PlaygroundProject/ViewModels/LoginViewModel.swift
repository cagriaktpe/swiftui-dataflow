//
//  LoginViewModel.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import Foundation

struct User: Equatable {
    var username: String = ""
    var password: String = ""
    
    mutating func reset() {
        username = ""
        password = ""
    }
}

final class LoginViewModel: ObservableObject {
    
    enum CurrenctState {
        case loading
        case loggedIn
        case loggedOut
    }
    
    @Published var user: User = .init()
    @Published var currentState: CurrenctState = .loggedOut
    
    func login() {
        guard !user.username.isEmpty && !user.password.isEmpty else { return }
        
        currentState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.currentState = .loggedIn
        }
    }
    
    func logout() {
        currentState = .loggedOut
        self.user.reset()
    }
}

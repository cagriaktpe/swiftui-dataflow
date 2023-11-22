//
//  ContentView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm: LoginViewModel = .init()

    var body: some View {
        switch vm.currentState {
        case .loading:
            ProgressView()
        case .loggedIn:
            LoggedInView(vm: vm)
        case .loggedOut:
            LoginView(vm: vm)
        }
    }
}

#Preview {
    ContentView()
}

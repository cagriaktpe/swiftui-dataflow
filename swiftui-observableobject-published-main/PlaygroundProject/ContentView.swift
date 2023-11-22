//
//  ContentView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = PeopleViewModel()
    
    
    var body: some View {
        VStack(spacing: 20) {
            if vm.isLoading {
                ProgressView("Loading")
                    .padding()
            } else {
                Text(vm.people.isEmpty ? "No people" : "Managed to get \(vm.people.count) users")
                    .padding()
            }
            Button("Fetch some people") {
                vm.fetchPeople()
            }
            .buttonStyle(.bordered)
        }
    }
}



#Preview {
    ContentView()
}

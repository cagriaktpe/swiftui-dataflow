//
//  PlaygroundProjectApp.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 18.11.2023.
//

import SwiftUI

@main
struct PlaygroundProjectApp: App {
    @StateObject private var vm = PurchaseViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                PurchaseView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Purchase")
                    }
                PurchaseStateView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("State")
                    }
                
            }
        
        }
    }
}

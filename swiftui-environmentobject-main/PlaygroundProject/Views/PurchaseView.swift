//
//  PurchaseView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        if vm.isLoading {
            ProgressView()
        } else {
            Button {
                vm.purchase()
            } label: {
                Text("Purchase")
            }
            .disabled(vm.hasPurchased)
            .opacity(vm.hasPurchased ? 0.5 : 1)
        }
    }
}

#Preview {
    PurchaseView()
        .environmentObject(PurchaseViewModel())
}

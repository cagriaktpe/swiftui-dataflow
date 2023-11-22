//
//  PurchaseStatusView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct PurchaseStatusView: View {
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        VStack {
            Image(systemName: vm.hasPurchased ? "lock.open" : "lock")
                .font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
            Text(vm.hasPurchased ? "Purchased" : "Not Purchased")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    PurchaseStatusView()
        .environmentObject(PurchaseViewModel())
}

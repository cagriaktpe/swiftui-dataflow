//
//  PurchaseStateView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct PurchaseStateView: View {
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        PurchaseStatusView()
    }
}

#Preview {
    PurchaseStateView()
        .environmentObject(PurchaseViewModel())
}

//
//  SecondView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct SecondView: View {
    @Binding var isLoading: Bool

    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text("No loading")
        }
    }
}

#Preview {
    SecondView(isLoading: .constant(true))
}

#Preview {
    SecondView(isLoading: .constant(false))
}

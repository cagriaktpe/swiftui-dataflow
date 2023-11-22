//
//  LoggedInView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct LoggedInView: View {
    let didTapLogout: () -> Void
    var body: some View {
        VStack {
            Text("You are logged in!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            Button {
                didTapLogout()
            } label: {
                Text("Logout")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8.0)
            }
        }
    }
}

#Preview {
    LoggedInView {}
}

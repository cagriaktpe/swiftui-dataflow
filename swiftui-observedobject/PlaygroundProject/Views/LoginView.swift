//
//  LoginView.swift
//  PlaygroundProject
//
//  Created by Samet Çağrı Aktepe on 22.11.2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var vm: LoginViewModel

    var body: some View {
        // create a login form
        VStack {
            TextField("Username", text: $vm.user.username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)

            SecureField("Password", text: $vm.user.password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)

            Button {
                vm.login()
            } label: {
                Text("Login")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8.0)
            }
        }
        .onChange(of: vm.user) { _, newValue in
            print("Username changed to \(newValue)")
        }
    }
}

#Preview {
    LoginView(vm: .init())
}

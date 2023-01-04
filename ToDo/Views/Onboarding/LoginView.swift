//
//  LoginView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginViewModel = LoginViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                CustomTextField(value: $loginViewModel.emailValue, name: "Email")
                CustomTextField(value: $loginViewModel.passwordValue, name: "Password")
                CustomButton(action: loginViewModel.login)
                Spacer()
                NavigationLink("Create an account", destination: RegisterView())
                    .foregroundColor(.black)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

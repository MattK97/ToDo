//
//  RegisterView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 29/12/2022.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack{
            Spacer()
            //CustomTextField(value: $loginViewModel.emailValue, name: "Email")
           // CustomTextField(value: $loginViewModel.passwordValue, name: "Password")
            //CustomButton(action: loginViewModel.login)
            Spacer()
            Button("Create an account"){
                dismiss()
            }
                .foregroundColor(.black)
        }.navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

//
//  RegisterViewModel.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 29/12/2022.
//

import Foundation
import FirebaseAuth
class RegisterViewModel : ObservableObject{
    @Published var emailValue : String = ""
    @Published var passwordValue: String = ""
    init(){}
    
    
    func register(){
        Auth.auth().createUser(withEmail: emailValue, password: passwordValue)
    }
}

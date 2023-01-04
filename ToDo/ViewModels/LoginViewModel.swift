//
//  LoginViewModel.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import Foundation
import Combine
import FirebaseAuth

class LoginViewModel : ObservableObject {
    @Published var emailValue : String = ""
    @Published var passwordValue: String = ""
    init(){}
    
    
    func login(){
        Auth.auth().signIn(withEmail: emailValue, password: passwordValue)
    }
    
}

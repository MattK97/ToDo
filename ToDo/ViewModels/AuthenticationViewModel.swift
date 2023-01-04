//
//  AuthenticationViewModel.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import Foundation
import FirebaseAuth

enum AuthStatus{
    case unauthenticated, authenticated
}

class AuthenticationViewModel : ObservableObject{
    
    @Published var authStatus : AuthStatus? = AuthStatus.unauthenticated
    
    static let instance : AuthenticationViewModel = AuthenticationViewModel()
    
    private init(){
        Auth.auth().addStateDidChangeListener{ auth, user in
            if(user == nil){
                self.authStatus = AuthStatus.unauthenticated
            }else{
                self.authStatus = AuthStatus.authenticated
            }
            
        }
    }
    
}

//
//  ContentView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var  authenticationVM : AuthenticationViewModel

    var body: some View {
        if(authenticationVM.authStatus == AuthStatus.unauthenticated){
            LoginView()
        }else{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

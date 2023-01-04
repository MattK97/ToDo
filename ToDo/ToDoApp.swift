//
//  ToDoApp.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject var authenticationVM = AuthenticationViewModel.instance
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(authenticationVM)
        }
    }
}

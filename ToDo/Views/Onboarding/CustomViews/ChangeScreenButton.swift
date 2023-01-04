//
//  ChangeScreenButton.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 29/12/2022.
//

import SwiftUI

struct ChangeScreenButton: View {
    var text : String
    var destination : AnyView
    
    init(text: String, destination: AnyView) {
        self.text = text
        self.destination = destination
    }
    
    var body: some View {
        NavigationLink(text, destination: destination).foregroundColor(.black)
    }
}

struct ChangeScreenButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeScreenButton(text: "TEST", destination: AnyView(RegisterView()))
    }
}

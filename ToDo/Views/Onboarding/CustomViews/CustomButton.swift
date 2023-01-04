//
//  CustomButton.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct CustomButton: View {
    var action : () -> Void
    init(action: @escaping () -> Void) {
        self.action = action
    }
    var body: some View {
        Button(action: action){
            Text("Login").padding(16)
        }
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(8)
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(action: {})
    }
}

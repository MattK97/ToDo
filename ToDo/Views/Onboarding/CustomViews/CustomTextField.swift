//
//  CustomTextField.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct CustomTextField: View {
    public var value : Binding<String>
    public var name : String
    
    init(value: Binding<String>, name: String) {
        self.value = value
        self.name = name
    }
    var body: some View {
        TextField(name, text: value).padding(8).overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.secondary.opacity(0.5))
        ).padding(8)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(value: .constant("Value"), name: "Some Name")
    }
}


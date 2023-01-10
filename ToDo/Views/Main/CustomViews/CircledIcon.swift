//
//  CircledIcon.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 06/01/2023.
//

import SwiftUI

struct CircledIcon: View {
    let color: Color
    init(color: Color) {
        self.color = color
    }
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 32, height: 32)
            .overlay(){
                Image(systemName: "calendar")
                    .foregroundColor(.white)
            }
    }
}

struct CircledIcon_Previews: PreviewProvider {
    static var previews: some View {
        CircledIcon(color: .green)
    }
}


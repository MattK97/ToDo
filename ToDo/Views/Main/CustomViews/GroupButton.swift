//
//  GroupButton.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 06/01/2023.
//

import SwiftUI


struct GroupButton: View {
    let color : Color
    let title : String
    var numberOfNotes : Int
    init(title: String,
        numberOfNotes: Int,
        color: Color){
        self.title = title
        self.numberOfNotes = numberOfNotes
        self.color = color
    }
    
    var body: some View {
        VStack {
            Grid {
                GridRow {
                    CircledIcon(color: color)
                    Spacer()
                    Text("\(numberOfNotes)")
                        .font(
                            .system(
                                size: 32,
                                weight: .bold,
                                design: .rounded
                            )
                        )
                    
                }
                GridRow {
                    Text(title)
                        .font(
                            .system(
                                size: 14,
                                weight: .semibold,
                                design: .rounded
                            )
                        )
                        .foregroundColor(.gray)
                }
            }
 
        }
        .padding(8)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct GroupButton_Previews: PreviewProvider {
    static var previews: some View {
        GroupButton (title: "Today", numberOfNotes: 4, color: .green)
    }
}

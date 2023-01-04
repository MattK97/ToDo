//
//  ListTile.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 31/12/2022.
//

import SwiftUI

struct ListTile: View {
    var note: Note
    @State var checked: Bool
    
    init(note: Note) {
        self.note = note
        checked = note.status == Status.done
    }
    
    
    var body: some View {
        HStack{
            CheckBoxView(checked: $checked)
            Text(note.title)
            Spacer()
        }
    }
}

struct ListTile_Previews: PreviewProvider {
    static var previews: some View {
        ListTile(note: Note(title: "Test", info: "Test", status: Status.pending))
    }
}

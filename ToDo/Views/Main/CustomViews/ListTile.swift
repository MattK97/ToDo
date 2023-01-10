//
//  ListTile.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 31/12/2022.
//

import SwiftUI

struct ListTile: View {
    var note: Note
    
    init(note: Note) {
        self.note = note
    }
    
    
    var body: some View {
        HStack{
            EmojiView(emoji: note.emoji)
            Text(note.title)
            Spacer()
        }
    }
}

struct ListTile_Previews: PreviewProvider {
    static var previews: some View {
        ListTile(note: Note(title: "Test", info: "Test", emoji: "S", created: Date()))
    }
}

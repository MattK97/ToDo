//
//  DashboardViewModel.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 10/01/2023.
//

import Foundation

class DashboardViewModel : ObservableObject {
    init(){
        formatter.dateFormat = "yyyy/MM/dd"
        notesList = [
            Note(title: "First note", info: "info", emoji: "🥐", created: formatter.date(from: "2023/01/10")!),
            Note(title: "Second note", info: "info", emoji: "👀", created: formatter.date(from: "2023/01/10")!),
            Note(title: "Third note", info: "info", emoji: "👋🏼", created: formatter.date(from: "2023/01/09")!),
            Note(title: "Fourth note", info: "info", emoji: "👨🏽‍🦳", created: formatter.date(from: "2023/01/07")!),
            Note(title: "Fifth note", info: "info", emoji: "🔥", created: formatter.date(from: "2023/01/03")!),
        ]
    }
    private var formatter : DateFormatter = DateFormatter()
    
    @Published var notesList : Array<Note> = []
    
    public var todaysNotes : Array<Note>{ notesList.filter { note in
        return Calendar.current.isDateInToday(note.created)
        }
    }
    public var todaysNotesCount : Int {return todaysNotes.count}
    
    public var yesterdayNotes : Array<Note>{ notesList.filter { note in
        return Calendar.current.isDateInYesterday(note.created)
        }
    }
    public var yesterdayNotesCount : Int {return yesterdayNotes.count}

}

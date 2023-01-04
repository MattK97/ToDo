//
//  Note.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 31/12/2022.
//

import Foundation

enum Status{
    case pending, done
}

struct Note {
    var title : String
    var info : String
    var status : Status
}

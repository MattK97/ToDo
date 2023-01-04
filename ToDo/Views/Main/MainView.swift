//
//  MainView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        List{
            ForEach(0 ..< 2) { item in
                ListTile(note:Note(title: "Test", info: "Test", status: Status.pending))
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

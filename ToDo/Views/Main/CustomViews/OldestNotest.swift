//
//  OldestNotest.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 06/01/2023.
//

import SwiftUI

struct OldestNotest: View {
    @EnvironmentObject var dashboardViewModel: DashboardViewModel
    var body: some View {
        Section(
            header:
                Text("Latest notes")
                .font(
                    .system(
                        size: 18,
                        weight: .bold,
                        design: .rounded
                    )
                )
                .foregroundColor(Color.black)
                .textCase(.none)
            
            ){
            List{
                ForEach(0 ..< dashboardViewModel.notesList.count, id:\.self) { item in
                    var note = dashboardViewModel.notesList[item]
                    ListTile(
                        note: note
                    )
                }
            }.scrollDisabled(true)
        }
    }
}

struct OldestNotest_Previews: PreviewProvider {
    static var previews: some View {
        OldestNotest()
    }
}

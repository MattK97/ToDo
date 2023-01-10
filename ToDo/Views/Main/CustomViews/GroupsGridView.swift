//
//  GroupsGridView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 06/01/2023.
//

import SwiftUI

struct GroupsGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @EnvironmentObject var dashboardViewModel: DashboardViewModel
    
    var body: some View {
        Section{
            Grid{
                GridRow{
                    GroupButton(
                        title: "Today",
                        numberOfNotes: dashboardViewModel.todaysNotesCount,
                        color: .blue
                    )
                    GroupButton(
                        title: "Yesterday",
                        numberOfNotes: dashboardViewModel.yesterdayNotesCount,
                        color: .red
                    )
                }
                GridRow{
                    GroupButton(
                        title: "Closed",
                        numberOfNotes: dashboardViewModel.notesList.count,
                        color: .green
                    )
                }
            }
        }
        .listRowBackground(Color.clear)
        .listRowInsets(.init())
    }
}
struct GroupsGridView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsGridView()
    }
}

//
//  MainView.swift
//  ToDo
//
//  Created by Mateusz Kukuła on 28/12/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            Form{
                GroupsGridView()
                OldestNotest()
            }
        }
        .environmentObject(DashboardViewModel())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(DashboardViewModel())
    }
}

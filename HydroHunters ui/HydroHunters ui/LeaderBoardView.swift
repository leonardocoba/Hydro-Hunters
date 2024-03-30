//
//  LeaderBoardView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 3/14/24.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        NavigationStack{
            Text("Hello, Leader!")
                .navigationTitle("Leaderboard")
        }
    }
}

#Preview {
    LeaderBoardView()
}

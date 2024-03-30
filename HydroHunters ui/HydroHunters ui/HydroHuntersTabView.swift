//
//  ContentView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 3/14/24.
//

import SwiftUI

struct HydroHuntersTabView: View {
    var body: some View {
        VStack {
            TabView {
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Map")
                    }
                LeaderBoardView()
                    .tabItem {
                        Image(systemName: "trophy")
                        Text("Leaderboard")
                    }
                AccountView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
            }
            .accentColor(Color("brandPrimary"))
            .frame(width: .infinity)
            .background(Color("brandSecondary"))
           
        }
      
    }
}

// Preview
struct HydroHuntersTabView_Previews: PreviewProvider {
    static var previews: some View {
        HydroHuntersTabView()
    }
}

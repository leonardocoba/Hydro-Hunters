//
//  MapView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 3/14/24.
//

import SwiftUI

import MapKit

struct MapView: View {
    
    @State private var searchText = ""
    
    let mathersHall = CLLocationCoordinate2D(latitude: 29.651990, longitude: -82.340540)
    let malachowsky = CLLocationCoordinate2D(latitude: 29.644810, longitude: -82.347690)
    let reitz = CLLocationCoordinate2D(latitude: 29.646475052169514, longitude: 82.34767431185692)
    
    var body: some View {
        NavigationStack{
            Map(){
                Marker("Matherly Hall", coordinate: mathersHall)
                Marker("Malachowsky Hall", coordinate: malachowsky)
            }
            .tint(Color("brandSecondary"))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .safeAreaInset(edge: .top){
                HStack{
                    TintButton(sfIcon: "magnifyingglass",
                               tintColor: "brandSecondary")
                    
                    
                    TextField("Search", text: $searchText)
                                            .textFieldStyle(.roundedBorder)

                    Spacer()
                    TintButton(sfIcon: "house",
                               tintColor: "brandSecondary")
                    
                    
                    TintButton(sfIcon: "line.3.horizontal",
                               tintColor: "brandSecondary")
                    
                  
                }
                .background(.thinMaterial)
            }
        }
    }
}

#Preview {
    MapView()
}

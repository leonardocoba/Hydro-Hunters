//
//  TintButtonIcon.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 3/15/24.
//

import SwiftUI

struct TintButton: View {
    
    var sfIcon: String
    var tintColor: String
    var body: some View {
        Button{
            
        } label:{
            Image(systemName: sfIcon)
            
        }
        .buttonStyle(.bordered)
        .tint(Color(tintColor))
        .clipShape(Circle())
        .padding()
    }
}

struct TintButton_Previews: PreviewProvider {
    static var previews: some View {
        TintButton(sfIcon: "waterbottle", tintColor: "brandSecondary")
    }
}


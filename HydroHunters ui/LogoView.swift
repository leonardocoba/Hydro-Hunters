//
//  LogoView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 4/2/24.
//

import SwiftUI

struct LogoView: View {
    var logoWidth: CGFloat // Variable for logo width
    var logoHeight: CGFloat // Variable for logo height

    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("huntersLogo") // The base image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: logoWidth, height: logoHeight)

            Image("hydroLogo") // The top image, off-centered to the left
                .resizable()
                .aspectRatio(contentMode: .fit)
                // The hydro logo is 90% of the width and height of the hunters logo
                .frame(width: logoWidth * 0.9, height: logoHeight * 0.9)
                // Offset is proportional to the width and height of the logos
                .offset(x: -logoWidth * 0.25, y: -logoHeight * 0.25)
        }
        // The frame height is twice the height of the hunters logo
        .frame(width: logoWidth, height: logoHeight * 2)
    }
}

// Preview provider
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        // Render the logo with specified width and height
        LogoView(logoWidth: 100, logoHeight: 100)
    }
}

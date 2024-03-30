//
//  LeaderBoardView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 3/14/24.
//

import SwiftUI

struct LeaderboardView: View {
    // Dummy data for total points
    let totalPoints: CGFloat = 242
    let maxPoints: CGFloat = 1000
    
    // State to control the animation
    @State private var progress: CGFloat = 0

    var body: some View {
    
        ZStack {
            // Circular progress view
           
            CircularProgressView(progress: progress)
                .frame(width: 200, height: 200)

            // Your icon in the middle of the circular progress bar
            Image(systemName: "waterbottle.fill") // Use your desired icon here
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100) // Adjust the size of the icon as needed
                .foregroundColor(.cyan)
        }
        Spacer()

        .onAppear {
            // Animate the progress bar to the current points
            withAnimation(.easeOut(duration: 1.5)) {
                progress = totalPoints / maxPoints
            }
            
        }
    }
}

struct CircularProgressView: View {
    var progress: CGFloat

    var body: some View {
        ZStack {
            // Background circle
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.blue)
            
            // Foreground circle (progress)
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 270)) // Start the progress from the top
        }
    }
  
}

#Preview {
    LeaderboardView()
}

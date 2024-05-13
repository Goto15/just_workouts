//
//  HomePage.swift
//  JustWorkouts
//
//  Created by ben on 5/5/24.
//

import SwiftUI


struct HomePage: View {
  var body: some View {
    ZStack {
      TabView {
        Group {
          WorkoutPage()
            .tabItem {
              Label("Workouts", systemImage: "figure.strengthtraining.traditional")
            }
          TrendsPage()
            .tabItem {
              Label("Trends", systemImage: "chart.line.uptrend.xyaxis")
            }
          HistoryPage()
            .tabItem {
              Label("History", systemImage: "calendar.badge.clock")
            }
          SettingsPage()
            .tabItem {
              Label("Settings", systemImage: "gearshape.fill")
            }
        }
      }
      .toolbarBackground(.visible, for: .tabBar)
    }
  }
}

#Preview {
  HomePage()
}

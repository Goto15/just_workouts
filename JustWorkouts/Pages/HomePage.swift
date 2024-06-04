//
//  HomePage.swift
//  JustWorkouts
//
//  Created by ben on 5/5/24.
//

import SwiftUI
import SwiftData

struct HomePage: View {
  @Environment(\.modelContext) private var modelContext
  
  var body: some View {
    ZStack {
      LevelDropdown()
//      TabView {
//        Group {
//          WorkoutPage()
//            .tabItem {
//              Label("Workouts", systemImage: "figure.strengthtraining.traditional")
//            }
//          TrendsPage()
//            .tabItem {
//              Label("Trends", systemImage: "chart.line.uptrend.xyaxis")
//            }
//          HistoryPage()
//            .tabItem {
//              Label("History", systemImage: "calendar.badge.clock")
//            }
//          SettingsPage()
//            .tabItem {
//              Label("Settings", systemImage: "gearshape.fill")
//            }
//        }
//        .toolbarBackground(.blue, for: .tabBar)
//        .toolbarBackground(.visible, for: .tabBar)
//        .toolbarColorScheme(.dark, for: .tabBar)
//      }
    }
  }
}

#Preview {
  HomePage()
}

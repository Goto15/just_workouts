//
//  JustWorkoutsApp.swift
//  JustWorkouts
//
//  Created by ben on 5/4/24.
//

import SwiftUI
import SwiftData

@main
struct JustWorkoutsApp: App {
  var body: some Scene {
    WindowGroup {
      HomePage()
    }
    .modelContainer(for: Exercise.self)
  }
}



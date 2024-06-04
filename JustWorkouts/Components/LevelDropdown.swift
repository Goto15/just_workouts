//
//  LevelDropdown.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftUI
import SwiftData

struct LevelDropdown: View {
  @Environment(\.modelContext) private var modelContext
  @Query(sort: \Exercise.name) private var exercises: [Exercise]
  
  var body: some View {
    VStack {
      Text("\(exercises.count)")
      List(exercises) {
        Text($0.name)
      }
      .task {
        do {
          let fetchDescriptor = FetchDescriptor<Level>()
          if try modelContext.fetch(fetchDescriptor).isEmpty {
            Exercise.initializeExerciseData(modelContext: modelContext)
          }
        } catch {
          print("OOooooh the exercises blew up")
        }
      }
    }
  }
}

#Preview {
    LevelDropdown()
}

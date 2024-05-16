//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI
//import Combine

struct WorkoutPage: View {
  @State private var exercises: [Exercise] = [Exercise()]
  
  var body: some View {
    VStack(alignment: .leading) {
      ExerciseGridView()
    }
  }
}

#Preview {
  WorkoutPage()
}

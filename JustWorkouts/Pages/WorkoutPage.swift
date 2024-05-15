//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI
//import Combine

struct WorkoutPage: View {
  
  var body: some View {
    VStack(alignment: .leading) {
      ExerciseGridView()
    }
  }
}

#Preview {
  WorkoutPage()
}

//
//  Workouts.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import Foundation

struct Exercise: Hashable, Identifiable {
  var id = UUID()
  var exercise: String? = "Squat"
  var sets: [Set]? = [Set()]
}

struct Set: Hashable, Identifiable {
  var id = UUID()
  var order_num: Int = 1
  var reps: Int? = 0
  var weight: Float? = 0
}

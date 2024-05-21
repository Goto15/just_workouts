//
//  Workouts.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI

struct Workout: Hashable, Identifiable {
  var id = UUID()
  var exercise: Exercise
  var sets: [Set]
}

// https://github.com/wrkout/exercises.json
struct Exercise: Hashable, Identifiable {
  var id = UUID()
  var name: String?
  var primaryMuscles: String?
  var secondaryMuscles: String?
  var force: String?
  var level: String?
  var mechanic: String?
  var equipment: String?
  var category: String?
  var instructions: String?
}

struct Set: Hashable, Identifiable {
  var id = UUID()
  var reps: Int? = 0
  var weight: Float? = 0
}

enum Muscle: CaseIterable {
  case abdominals
  case hamstrings
  case calves
  case shoulders
  case adductors
  case glutes
  case quadriceps
  case biceps
  case forearms
  case abductors
  case triceps
  case chest
  case lower_back
  case traps
  case middle_back
  case lats
  case neck
}

enum Force: CaseIterable {
  case pull
  case push
  case hold
}

enum Level: CaseIterable {
  case beginner
  case intermediate
  case expert
}

enum Mechanic: CaseIterable {
  case compound
  case isolation
}

enum Equipment: CaseIterable {
  case body
  case machine
  case kettlebells
  case dumbbell
  case cable
  case barbell
  case bands
  case medicine_ball
  case exercise_ball
  case ez_curl_bar
  case foam_roll
}

enum Category: CaseIterable {
  case strength
  case stretching
  case plyometrics
  case strongman
  case powerlifting
  case cardio
  case olympic_weightlifting
  case crossfit
  case weighted_bodyweight
  case assisted_bodyweight
}



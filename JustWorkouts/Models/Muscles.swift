//
//  Muscles.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftData

@Model
final class Muscle {
  @Attribute var name: String
  @Relationship(inverse: \Exercise.category)
  var exercises = [Exercise]()
  
  init(name: String) {
    self.name = name
  }
}

extension Muscle {
  static func initializeMuscleData (modelContext: ModelContext) -> Void{
    let muscle_abdominals = Muscle(name: "abdominals")
    let muscle_hamstrings = Muscle(name: "hamstrings")
    let muscle_calves = Muscle(name: "calves")
    let muscle_shoulders = Muscle(name: "shoulders")
    let muscle_adductors = Muscle(name: "adductors")
    let muscle_glutes = Muscle(name: "glutes")
    let muscle_quadriceps = Muscle(name: "quadriceps")
    let muscle_biceps = Muscle(name: "biceps")
    let muscle_forearms = Muscle(name: "forearms")
    let muscle_abductors = Muscle(name: "abductors")
    let muscle_triceps = Muscle(name: "triceps")
    let muscle_chest = Muscle(name: "chest")
    let muscle_lower_back = Muscle(name: "lower_back")
    let muscle_traps = Muscle(name: "traps")
    let muscle_middle_back = Muscle(name: "middle_back")
    let muscle_lats = Muscle(name: "lats")
    let muscle_neck = Muscle(name: "neck")
    modelContext.insert(muscle_abdominals)
    modelContext.insert(muscle_hamstrings)
    modelContext.insert(muscle_calves)
    modelContext.insert(muscle_shoulders)
    modelContext.insert(muscle_adductors)
    modelContext.insert(muscle_glutes)
    modelContext.insert(muscle_quadriceps)
    modelContext.insert(muscle_biceps)
    modelContext.insert(muscle_forearms)
    modelContext.insert(muscle_abductors)
    modelContext.insert(muscle_triceps)
    modelContext.insert(muscle_chest)
    modelContext.insert(muscle_lower_back)
    modelContext.insert(muscle_traps)
    modelContext.insert(muscle_middle_back)
    modelContext.insert(muscle_lats)
    modelContext.insert(muscle_neck)
  }
}


//
//  Equipment.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftData

@Model
final class Equipment{
  @Attribute var name: String
  @Relationship(inverse: \Exercise.category)
  var exercises = [Exercise]()
  
  init(name: String) {
    self.name = name
  }
}

extension Equipment {
  static func initializeEquipmentData(modelContext: ModelContext) -> Void {
    let equipment_body = Equipment(name: "body")
    let equipment_machine = Equipment(name: "machine")
    let equipment_kettlebells = Equipment(name: "kettlebells")
    let equipment_dumbbell = Equipment(name: "dumbbell")
    let equipment_cable = Equipment(name: "cable")
    let equipment_barbell = Equipment(name: "barbell")
    let equipment_bands = Equipment(name: "bands")
    let equipment_medicine_ball = Equipment(name: "medicine_ball")
    let equipment_exercise_ball = Equipment(name: "exercise_ball")
    let equipment_ez_curl_bar = Equipment(name: "ez_curl_bar")
    let equipment_foam_roll = Equipment(name: "foam_roll")
    modelContext.insert(equipment_body)
    modelContext.insert(equipment_machine)
    modelContext.insert(equipment_kettlebells)
    modelContext.insert(equipment_dumbbell)
    modelContext.insert(equipment_cable)
    modelContext.insert(equipment_barbell)
    modelContext.insert(equipment_bands)
    modelContext.insert(equipment_medicine_ball)
    modelContext.insert(equipment_exercise_ball)
    modelContext.insert(equipment_ez_curl_bar)
    modelContext.insert(equipment_foam_roll)
  }
}

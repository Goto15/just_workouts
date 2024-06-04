//
//  Category.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftData

@Model
final class Category {
  @Attribute var name: String
  @Relationship(inverse: \Exercise.category)
  var exercises = [Exercise]()
  
  init(name: String) {
    self.name = name
  }
}

extension Category {
  static func initializeCategoryData(modelContext: ModelContext) -> Void {
    let category_strength = Category(name: "strength")
    let category_stretching = Category(name: "stretching")
    let category_plyometrics = Category(name: "plyometrics")
    let category_strongman = Category(name: "strongman")
    let category_powerlifting = Category(name: "powerlifting")
    let category_cardio = Category(name: "cardio")
    let category_olympic_weightlifting = Category(name: "olympic_weightlifting")
    let category_crossfit = Category(name: "crossfit")
    let category_weighted_bodyweight = Category(name: "weighted_bodyweight")
    let category_assisted_bodyweight = Category(name: "assisted_bodyweight")
    modelContext.insert(category_strength)
    modelContext.insert(category_stretching)
    modelContext.insert(category_plyometrics)
    modelContext.insert(category_strongman)
    modelContext.insert(category_powerlifting)
    modelContext.insert(category_cardio)
    modelContext.insert(category_olympic_weightlifting)
    modelContext.insert(category_crossfit)
    modelContext.insert(category_weighted_bodyweight)
    modelContext.insert(category_assisted_bodyweight)
  }
}

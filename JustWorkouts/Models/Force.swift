//
//  Force.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftData

@Model
final class Force {
  @Attribute var type: String
  @Relationship(inverse: \Exercise.force)
  var exercises = [Exercise]()
  
  init(type: String) {
    self.type = type
  }
}

extension Force {
  static func initializeCategoryData(modelContext: ModelContext) -> Void {
    let forces = ["push", "pull", "hold"]
    forces.forEach{ force in
      modelContext.insert(Force(type: force))
    }
  }
}

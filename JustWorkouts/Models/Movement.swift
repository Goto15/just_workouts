//
//  Movement.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

//NOTE: Renamed from Mechanic to Movement
import SwiftData

@Model
final class Movement {
  @Attribute var type: String
  @Relationship(inverse: \Exercise.movement)
  var exercises = [Exercise]()
  
  init(type: String) {
    self.type = type
  }
}

extension Movement {
  static func initializeMovementData (modelContext: ModelContext) -> Void{
    let movement_compound = Movement(type: "compound")
    let movement_isolation = Movement(type: "isolation")
    modelContext.insert(movement_compound)
    modelContext.insert(movement_isolation)
  }
}

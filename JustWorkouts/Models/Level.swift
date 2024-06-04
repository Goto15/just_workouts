//
//  Level.swift
//  JustWorkouts
//
//  Created by ben on 6/2/24.
//

import SwiftData
import SwiftUI

@Model
final class Level {
  @Attribute var name: String
  @Relationship(inverse: \Exercise.level)
  var exercises = [Exercise]()
  
  init(name: String) {
    self.name = name
  }
  
  static func insertInitialData(modelContext: ModelContext) {
    let beginner = Level(name: "Beginner")
    let intermediate = Level(name: "Intermediate")
    let expert = Level(name: "Expert")
    
    modelContext.insert(beginner)
    modelContext.insert(intermediate)
    modelContext.insert(expert)
  }
}

extension Level {
  static func predicate(name: String) -> Predicate<Level>{
    return #Predicate<Level> { level in
      level.name == name
    }
  }
}

extension Level {
  static func initializeLevelData (modelContext: ModelContext) -> Void{
    let level_beginner = Level(name: "beginner")
    let level_intermediate = Level(name: "intermediate")
    let level_expert = Level(name: "expert")
    modelContext.insert(level_beginner)
    modelContext.insert(level_intermediate)
    modelContext.insert(level_expert)
  }
}

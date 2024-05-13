//
//  Environment.swift
//  JustWorkouts
//
//  Created by ben on 5/8/24.
//

import SwiftUI

@Observable
class Theme {
  var primary: Color = Color.darkOrange
  var secondary: Color = Color.spaceBlue
  var backgroundGradient: LinearGradient = LinearGradient(
                              colors: [ Color.yellow, Color.orange, Color.darkOrange, Color.blue, Color.spaceBlue],
                              startPoint: .topLeading, endPoint: .bottomTrailing)
}

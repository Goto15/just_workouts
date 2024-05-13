//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI
//import Combine

struct WorkoutPage: View {
  @State private var reps: Int = 0
  @State private var numSets: Int = 1
  
  private static let formatter: NumberFormatter = {
      let formatter = NumberFormatter()
      formatter.numberStyle = .decimal
      return formatter
  }()
  
  var body: some View {
    ZStack {
      VStack {
        HStack {
          Text("# of Sets")
          Picker("# of Sets", selection: $numSets) {
            ForEach(1...10, id: \.self) { number in
              Text("\(number)")
                .frame(minWidth: .infinity)
            }
          }
          .frame(maxWidth: .infinity)
        }
        Spacer()
        HStack {
          VStack(alignment: .leading) {
            Text("Reps")
            TextField("Reps", value: $reps, formatter: WorkoutPage.formatter)
              .textFieldStyle(RoundedBorderTextFieldStyle())
              .keyboardType(.numberPad)
          }
          VStack(alignment: .leading) {
            Text("Weight")
            TextField("Weight", value: $reps, formatter: WorkoutPage.formatter)
              .textFieldStyle(RoundedBorderTextFieldStyle())
              .keyboardType(.numberPad)
          }
        }
        AddSetButton()
        FinishWorkoutButton()
        Spacer()
      }
      .padding()
    }
  }
}

#Preview {
    WorkoutPage()
}

//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI

struct ExerciseGridView: View {
  // TODO: This needs to store the exercise that's being performed based on what's in the exercise drop down
  @State private var sets: [Set] = [Set(reps: 12, weight: 140)]
  
  private static let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter
  }()
  
  func addSet() -> Void {
    sets.append(Set(reps: (sets.last?.reps ?? 10), weight: (sets.last?.weight ?? 45)))
  }
  
  // Have to renumber the sets so additional sets a
  func removeSet(setToRemove: Int) -> Void {
    sets.remove(at: setToRemove)
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      // TODO: This selection needs to change the title of the exercise
      ExerciseSelectDropdown()
      
      // NOTE: https://sarunw.com/posts/swiftui-grid/
      Grid(alignment: .leading, verticalSpacing: 10) {
        GridRow {
          Text("Set")
          Text("Reps").padding([.leading, .trailing], 8)
          Text("Weight").padding([.leading, .trailing], 8)
        }
        
        Divider()
        
        ForEach(Array(zip(sets.indices, $sets)), id: \.0) { index, set in
          GridRow(alignment: .center){
            Text(String(index + 1))
            TextField("Reps", value: set.reps, formatter: ExerciseGridView.formatter)
              .padding([.leading, .trailing], 8)
            TextField("Weight", value: set.weight, formatter: ExerciseGridView.formatter)
              .padding([.leading, .trailing], 8)
            Button (action: { sets.remove(at: index) }) {
              Label("Delete Set", systemImage: "minus.circle")
                .font(Font.system(size: 16))
                .labelStyle(.iconOnly)
                .tint(.red)
            }
          }
        }
      }
      .font(.title3)
      .keyboardType(.numberPad)
      .textFieldStyle(RoundedBorderTextFieldStyle())
      
      Button(
        action: { addSet() }){
          Label("Set", systemImage: "plus.square")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .font(.title)
        .tint(.accentColor)
        .padding(.top)
    }
  }
}

#Preview {
    ExerciseGridView()
}

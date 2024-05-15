//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI
//import Combine

struct ExerciseGridView: View {
  //  @State private var reps: Int = 0
  //  @State private var numSets: Int = 1
  @State private var sets: [Set] = [Set(reps: 12, weight: 140)]
  
  private static let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter
  }()
  
  func addSet() -> Void {
    let newSet = Set(order_num: (sets.last?.order_num ?? 0) + 1,
                     reps: (sets.last?.reps ?? 10),
                     weight: (sets.last?.weight ?? 45))
    
    sets.append(newSet)
  }
  
  // Have to renumber the sets so additional sets a
  func removeSet(setToRemove: Binding<Set>) -> Void {
    sets.remove(at: (setToRemove.order_num.wrappedValue - 1))
    for (index, _) in sets.enumerated() {
      sets[index].order_num = index + 1
    }
  }
  
  var body: some View {
    ZStack {
      VStack(alignment: .leading) {
        Text("Squats")
          .font(.title)
          .padding(.bottom)
          .fontWeight(.bold)
        
        // NOTE: https://sarunw.com/posts/swiftui-grid/
        Grid(alignment: .leading, verticalSpacing: 10) {
          GridRow {
            Text("Set")
            Text("Reps").padding([.leading, .trailing], 8)
            Text("Weight").padding([.leading, .trailing], 8)
          }
          
          Divider()
          
          ForEach($sets) { set in
            GridRow(alignment: .center){
              Text(String(set.order_num.wrappedValue))
              TextField("Reps", value: set.reps, formatter: ExerciseGridView.formatter)
                .padding([.leading, .trailing], 8)
              TextField("Weight", value: set.weight, formatter: ExerciseGridView.formatter)
                .padding([.leading, .trailing], 8)
              Button (action: {removeSet(setToRemove: set)}) {
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
            Label("Set", systemImage: "plus.square.fill")
              .frame(maxWidth: .infinity, alignment: .leading)
          }
          .font(.title)
          .buttonStyle(.borderedProminent)
          .tint(.accentColor)
          .padding(.top)
      }
      .padding()
    }
  }
}

#Preview {
    ExerciseGridView()
}

//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI
//import Combine

struct WorkoutPage: View {
  //  @State private var reps: Int = 0
  //  @State private var numSets: Int = 1
  @State private var sets: [Set] = [Set(reps: 12, weight: 140)]
  
  private static let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter
  }()
  
  // TODO: Needs to add a new set with increasing number
  //       and also needs to autofill last set's reps
  func addSet() -> Void {
    let newSet = Set(order_num: sets.last!.order_num + 1,
                     reps: sets.last?.reps,
                     weight: sets.last?.weight)
    
    sets.append(newSet)
  }
  
  var body: some View {
    ZStack {
      VStack {
        Spacer()
        
        Grid(alignment: .leading) {
          GridRow {
            Text("Set")
            Text("Reps").padding([.leading, .trailing])
            Text("Weight").padding([.leading, .trailing])
          }
          Divider()
          ForEach($sets) { set in
            GridRow(alignment: .center){
              Text(String(set.order_num.wrappedValue)).padding(.bottom)
              TextField("Reps", value: set.reps, formatter: WorkoutPage.formatter)
                .padding([.leading, .trailing, .bottom])
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
              TextField("Weight", value: set.weight, formatter: WorkoutPage.formatter)
                .padding([.leading, .trailing, .bottom])
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            }
          }
        }
        .padding()
        
        Spacer()
        
        Button(
          action: { addSet() }){
            Label("Set", systemImage: "plus.square.fill")
              .frame(maxWidth: .infinity, alignment: .leading)
        }
          .padding()
          .font(.system(.title))
          .buttonStyle(.borderedProminent)
          .tint(.blue)
        
        Spacer()
      }
    }
  }
}

#Preview {
    WorkoutPage()
}

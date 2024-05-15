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
  
  func addSet() -> Void {
    let newSet = Set(order_num: sets.last!.order_num + 1,
                     reps: sets.last?.reps,
                     weight: sets.last?.weight)
    
    sets.append(newSet)
  }
  
  // TODO: Needs to remove the corrrect set and then renumber the remaining sets
  func removeSet(setToRemove: Binding<Set>) -> Void {
    sets.remove(at: (setToRemove.order_num.wrappedValue - 1))
    print("I've Removed \(setToRemove.order_num.wrappedValue)!")
  }
  
  var body: some View {
    ZStack {
      VStack {
        Spacer()
        
        Text("Squats").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        // https://sarunw.com/posts/swiftui-grid/
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
              TextField("Reps", value: set.reps, formatter: WorkoutPage.formatter)
                .padding([.leading, .trailing], 8)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
              TextField("Weight", value: set.weight, formatter: WorkoutPage.formatter)
                .padding([.leading, .trailing], 8)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
              Button (action: {removeSet(setToRemove: set)}) {
                Label("Delete Set", systemImage: "minus.circle")
                  .labelStyle(.iconOnly)
                  .tint(.red)
              }
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

//
//  ExercisePage.swift
//  JustWorkouts
//
//  Created by ben on 5/9/24.
//

import SwiftUI

struct WorkoutPage: View {
  var body: some View{
    LevelDropdown()
  }
//  @State private var exercises: [Exercise] = [Exercise()]
//  
//  var body: some View {
//    VStack(alignment: .trailing) {
//      ScrollView {
//        VStack(alignment: .leading) {
//          ForEach(Array(zip(exercises.indices, $exercises)), id: \.0) { index, exercise in
//            ExerciseGridView()
//              .padding(.bottom)
//          }
//        }
//        .padding()
//      }
//      Button(action: { exercises.append(Exercise()) }){
//        Label("Exercise", systemImage: "plus.square.on.square")
//          .frame(maxWidth: .infinity, alignment: .leading)
//      }
//      .padding()
//      .font(.system(.title))
//      .buttonStyle(.borderedProminent)
//      .tint(.orange)
//    }
//  }
}

#Preview {
  WorkoutPage()
}

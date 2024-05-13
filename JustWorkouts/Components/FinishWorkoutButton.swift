//
//  JustWorkouts
//
//  Created by ben on 5/4/24.
//

import SwiftUI

struct FinishWorkoutButton: View {
  
  var body: some View {
    Button(action: { print("Finished Workout") }){
      Label("Finish Workout", systemImage: "checkmark.square.fill")
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    .font(.system(.title))
    .buttonStyle(.borderedProminent)
    .tint(.orange)
  }
}

#Preview {
  FinishWorkoutButton()
}

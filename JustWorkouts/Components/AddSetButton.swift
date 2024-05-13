//
//  AddSetButton.swift
//  JustWorkouts
//
//  Created by ben on 5/4/24.
//

import SwiftUI

struct AddSetButton: View {
    var body: some View {
      Button(
        action: { print("Add a Set") }){
          Label("Set", systemImage: "plus.square.fill")
            .frame(maxWidth: .infinity, alignment: .leading)
      }
      .font(.system(.title))
      .buttonStyle(.borderedProminent)
      .tint(.blue)
    }
}

#Preview {
    AddSetButton()
}

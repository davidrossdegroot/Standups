//
//  SwiftUIView.swift
//  Standups
//
//  Created by David De Groot on 2/19/25.
//
import SwiftUI
import SwiftUINavigation

struct EditStandupView: View {
  @Binding var standup: Standup

  var body: some View {
    Form {
    }
  }
}

struct EditStandup_Previews: PreviewProvider {
  static var previews: some View {
    WithState(initialValue: Standup.mock) { $standup in
      EditStandupView(standup: $standup)
    }
  }
}

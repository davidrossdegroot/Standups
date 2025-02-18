//
//  StandupList.swift
//  Standups
//
//  Created by David De Groot on 2/18/25.
//

import SwiftUI

final class StandupsListModel: ObservableObject {
    @Published var standups: [Standup]

    init(standups: [Standup] = []) {
      self.standups = standups
    }
}

struct StandupsList: View {
    @ObservedObject var model: StandupsListModel
  var body: some View {
    NavigationStack {
      List {
          ForEach(self.model.standups) { standup in
              CardView(standup: standup).listRowBackground(standup.theme.mainColor)
          }
      }
      .navigationTitle("Daily Standups")
    }
  }
}

struct StandupsList_Previews: PreviewProvider {
  static var previews: some View {
      StandupsList(model: StandupsListModel(
        standups: [
            .mock,
        ]
      ))
  }
}

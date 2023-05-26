//
//  kpvIosApp.swift
//  kpvIos
//
//  Created by Даниил Пасилецкий on 26.05.2023.
//

import SwiftUI

@main
struct kpvIosApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(model: AboutTeamModel.mock)
        }
    }
}

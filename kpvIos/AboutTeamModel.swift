//
//  AboutTeamModel.swift
//  kpvIos
//
//  Created by Даниил Пасилецкий on 26.05.2023.
//

import Foundation
import CoreLocation

struct AboutTeamModel {
  let name: String
  let address: String
  let cntact: People
  let telephone: String
  let tg: String
  let site: String
  let email: String

  var location = [Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 55.7522, longitude: 37.6156))]

  static let mock: AboutTeamModel = AboutTeamModel(name: "MyTeam", address: "Покровский бульвар", cntact: People(name: "Пасилецкий Даниил Олегович", post: "TeamLead iOS"), telephone: "89180436947", tg: "pasik2032", site: "https://google.com", email: "test@ya.tu")
}

struct People {
  let name: String
  let post: String
}


struct Location: Identifiable {
  let id = UUID()
  let name: String
  var coordinate: CLLocationCoordinate2D
}

//
//  ContentView.swift
//  kpvIos
//
//  Created by Даниил Пасилецкий on 26.05.2023.
//

import SwiftUI
import MapKit

struct ContentView: View {

  var model: AboutTeamModel

  @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 55.7522, longitude: 37.6156), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    var body: some View {
      NavigationStack {
        VStack {
          VStack {
            Text(model.name)
              .font(.title)

            Text(model.address)
              .font(.body)
          }
          Spacer(minLength: 50)
          Text("Контактное лицо")
            .font(.title2)
          Spacer(minLength: 20)
          ValueView(title: "ФИО:", value: model.cntact.name)
          ValueView(title: "Должность:", value: model.cntact.post)
          Spacer(minLength: 20)
          Text("Контакты")
            .font(.title2)

          VStack(spacing: 10.0) {
            HStack {
              Text("Телефон:")
              Spacer()
              Link(model.telephone, destination: URL(string: "tel:\(model.telephone)")!)
            }

            HStack {
              Text("tg:")
              Spacer()
              Link("@\(model.tg)", destination: URL(string: "tg://\(model.tg)")!)
            }

            HStack {
              Text("email:")
              Spacer()
              Link("\(model.email)", destination: URL(string: "mailto://\(model.email)")!)
            }


              HStack {
                Text("Сайт:")
                Spacer()
                NavigationLink(model.site) {
                  SafariView(url: URL(string: model.site)!)
                    .ignoresSafeArea()
                }
            }
          }

          Map(coordinateRegion: $mapRegion, annotationItems: model.location) { location in
            MapMarker(coordinate: location.coordinate)
          }
          .cornerRadius(15.0)
          }
        .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(model: AboutTeamModel.mock)
    }
}



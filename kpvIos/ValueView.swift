//
//  ValueView.swift
//  kpvIos
//
//  Created by Даниил Пасилецкий on 26.05.2023.
//

import SwiftUI

struct ValueView: View {

  var title: String
  var value: String


  var body: some View {
    HStack {
      Text(title)
      Spacer()
      Text(value)
    }

  }
}

struct ValueView_Previews: PreviewProvider {
  static var previews: some View {
    ValueView(title: "Ntcn", value: "Ntcn")
  }
}

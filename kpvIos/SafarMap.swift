//
//  SafarMap.swift
//  kpvIos
//
//  Created by Даниил Пасилецкий on 26.05.2023.
//

import Foundation
import SafariServices
import SwiftUI


struct SafariView: UIViewControllerRepresentable {
  typealias UIViewControllerType = SFSafariViewController


  let url: URL

  func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
    return SFSafariViewController(url: url)
  }

  func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

  }

}

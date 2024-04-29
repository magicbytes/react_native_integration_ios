//
//  ReactView.swift
//  POReact
//
//  Created by Alex Cebotari on 26/04/2024.
//

import SwiftUI
import React

class BridgeDelegate: NSObject, RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge) -> URL? {
    // This will only work if you're running the metro server locally.
    return URL(string: "http://localhost:8081/index.bundle?platform=ios")
  }
}

struct ReactView: UIViewControllerRepresentable {
  let moduleName: String
  let launchOptions: [AnyHashable : Any]?
  let bridgeDelegate = BridgeDelegate()

  func makeUIViewController(context: Context) -> UIViewController {
    let bridge = RCTBridge(delegate: bridgeDelegate, launchOptions: nil)!
    let rootView = RCTRootView(bridge: bridge, moduleName: moduleName, initialProperties: launchOptions)
    let viewController = UIViewController()
    viewController.view = rootView
    return viewController
  }

  func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    // Update your view controller if needed.
  }
}

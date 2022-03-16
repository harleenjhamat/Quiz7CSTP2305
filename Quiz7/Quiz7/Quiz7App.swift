//
//  Quiz7App.swift
//  Quiz7
//
//  Created by Harleen Jhamat on 2022-03-16.
//

import SwiftUI

@main
struct Quiz7App: App {
    
    let network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}

//
//  GestyApp.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
//

import SwiftUI
import FirebaseCore

@main
struct GestyApp: App {
    
    init() {
        
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

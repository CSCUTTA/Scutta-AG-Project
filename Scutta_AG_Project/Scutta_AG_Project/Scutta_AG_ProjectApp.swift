//
//  Scutta_AG_ProjectApp.swift
//  Scutta_AG_Project
//
//  Created by Cody Scutta on 7/21/22.
//

import SwiftUI

@main
struct Scutta_AG_Code_ProjectApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

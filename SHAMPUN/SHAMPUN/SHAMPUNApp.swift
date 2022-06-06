//
//  SHAMPUNApp.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

@main
struct SHAMPUNApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2021/12/8.
//

import SwiftUI

@main
struct FinalProjectApp: App {
    @StateObject private var settings = UserSettings()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}

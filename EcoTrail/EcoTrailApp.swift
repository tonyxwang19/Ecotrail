//
//  EcoTrailApp.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 3/30/25.
//

import SwiftUI

@main
struct EcoTrailApp: App {
    @StateObject var counter = ClassificationCounter()
    var body: some Scene {
        WindowGroup {
            WelcomeView().environmentObject(counter)
        }
    }
}

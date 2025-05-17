//
//  ContentView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 3/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ExploreView()
                    .navigationTitle("Explore EcoTrail")
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Explore")
            }
            
            NavigationView {
                CameraView()
                    .navigationTitle("Camera")
            }
            .tabItem {
                Image(systemName: "camera.fill")
                Text("Collect Trash")
            }
            
            NavigationView {
                ProgressPageView()
                    .navigationTitle("Progress")
                    .environmentObject(ClassificationCounter())
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("My EcoTrail")
                
            }
            .accentColor(.green)
        }
    }
}

#Preview {
    ContentView()
}

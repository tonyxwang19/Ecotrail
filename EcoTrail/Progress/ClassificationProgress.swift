//
//  ClassificationProgress.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 5/17/25.
//

import Foundation

class ClassificationCounter: ObservableObject {
    @Published var bottleCount = 0
    @Published var packageCount = 0
    @Published var bagCount = 0
    @Published var fruitCount = 0

    func increment(for label: String) {
        switch label.lowercased() {
        case "bottle":
            bottleCount += 1
        case "package":
            packageCount += 1
        case "bag":
            bagCount += 1
        case "fruit":
            fruitCount += 1
        default:
            break
        }
    }
    
    var totalWeightInGrams: Int {
        return bottleCount * 10 + packageCount * 8 + bagCount * 5 + fruitCount * 15
    }
}

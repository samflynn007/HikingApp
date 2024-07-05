//
//  Hike.swift
//  HikingApp
//
//  Created by Venky on 04/07/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let photo: String
    let miles: Double
}

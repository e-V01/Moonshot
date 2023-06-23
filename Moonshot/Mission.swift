//
//  Mission.swift
//  Moonshot
//
//  Created by Y K on 17.05.2023.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    
    let id: Int
    let launchData: Date?
    let crew: [CrewRole]
    let description: String
    let badge: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchData?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}

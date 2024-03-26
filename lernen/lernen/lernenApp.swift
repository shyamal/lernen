//
//  lernenApp.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-15.
//

import SwiftUI
import SwiftData

@main
struct lernenApp: App {
    @StateObject private var appCoordinator = AppCoordinator()
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        
        
        WindowGroup {
            appCoordinator.contentView()
        }
        .modelContainer(sharedModelContainer)
    }
}




//
//  TimeZoneLessApp.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 07/09/2023.
//

import SwiftUI

@main
struct TimeZoneLessApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

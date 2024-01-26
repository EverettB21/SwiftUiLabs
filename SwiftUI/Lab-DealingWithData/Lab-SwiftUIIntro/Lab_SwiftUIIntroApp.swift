//
//  Lab_SwiftUIIntroApp.swift
//  Lab-SwiftUIIntro
//
//  Created by Everett Brothers on 12/13/23.
//

import SwiftUI

@main
struct Lab_SwiftUIIntroApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

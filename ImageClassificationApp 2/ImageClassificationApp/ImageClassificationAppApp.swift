//
//  ImageClassificationAppApp.swift
//  ImageClassificationApp
//
//  Created by Tabita Sadiq on 9/12/24.
//

import SwiftUI

@main
struct ImageClassificationAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

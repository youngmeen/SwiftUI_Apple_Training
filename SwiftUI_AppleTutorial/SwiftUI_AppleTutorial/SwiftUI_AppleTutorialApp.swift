//
//  SwiftUI_AppleTutorialApp.swift
//  SwiftUI_AppleTutorial
//
//  Created by developer on 2021/08/06.
//

import SwiftUI

@main
struct SwiftUI_AppleTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

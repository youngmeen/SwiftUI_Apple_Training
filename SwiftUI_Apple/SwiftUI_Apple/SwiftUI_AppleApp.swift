//
//  SwiftUI_AppleApp.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/05.
//

import SwiftUI

@main
struct SwiftUI_AppleApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

//
//  Profile.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/06.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonPhoto = Seasons.winter
    var goalDate = Date()
    static let `default` = Profile(username: "g_kumar")

    
    enum Seasons: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        
        var id: String {self.rawValue}
    }
    
}

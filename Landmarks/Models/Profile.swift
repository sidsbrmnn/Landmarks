//
//  Profile.swift
//  Landmarks
//
//  Created by Siddharth Subramanian on 2/9/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "sidsbrmnn")
    
    enum Season: String, CaseIterable, Identifiable {
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "☃️"
        
    var id: String { rawValue }
    }
}

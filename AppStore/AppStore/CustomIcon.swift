//
//  CustomIcon.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI
enum TabViewItemType: String {
    case today = "투데이"
    case game
    case app = "앱"
    case arcade
    case search = "검색"
    var image: Image {
        switch self {
        case .today: return Image(systemName: "doc.text.image")
        case .game: return Image("GameIcon")
        case .app: return Image(systemName: "square.stack.3d.up.fill")
        case .arcade: return Image("ArcadeIcon")
        case .search: return Image(systemName: "magnifyingglass")
        }
    }
    var text: Text {
        Text(self.rawValue)
    }
}

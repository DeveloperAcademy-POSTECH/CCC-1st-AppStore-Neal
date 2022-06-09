//
//  ContentView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    TabViewItem(type: .today)
                }
            GameView()
                .tabItem {
                    TabViewItem(type: .game)
                }
            AppView()
                .tabItem {
                    TabViewItem(type: .app)
                }
            TodayView()
                .tabItem {
                    TabViewItem(type: .arcade)
                }
            TodayView()
                .tabItem {
                    TabViewItem(type: .search)
                }
            
        }
        .font(.headline)
    }
}
struct TabViewItem: View {
    var type: TabViewItemType
    var body: some View {
        VStack {
            type.image
                .renderingMode(.template)
            type.text
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

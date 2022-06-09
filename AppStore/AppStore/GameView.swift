//
//  GameView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ProfileView(selectedTabview: .game)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

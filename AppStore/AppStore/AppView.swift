//
//  AppView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ProfileView(selectedTabview: .app)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

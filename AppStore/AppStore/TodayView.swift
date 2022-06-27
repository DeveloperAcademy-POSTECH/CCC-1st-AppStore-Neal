//
//  TodayView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack {
            ProfileView(selectedTabview: .today)
            Spacer(minLength: 10)
            GridView()
            Spacer()
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}

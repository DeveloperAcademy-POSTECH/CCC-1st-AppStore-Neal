//
//  SearchView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ProfileView(selectedTabview: .search)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

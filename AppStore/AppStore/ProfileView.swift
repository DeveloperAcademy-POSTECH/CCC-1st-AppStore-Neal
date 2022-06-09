//
//  ProfileView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/07.
//

import SwiftUI

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "M월 d일 EEEE"
    formatter.locale = Locale(identifier: "ko_kr")
    return formatter
}()

struct CurrentDateView: View {
    @State var todayDate: Date = Date()
    var body: some View {
        HStack {
            Text("\(dateFormatter.string(from: todayDate))")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.significantTimeChangeNotification)
        ) { _ in todayDate = Date() }
    }
}
struct ProfileView: View {
    var selectedTabview: TabViewItemType
    var body: some View {
        VStack {
            if selectedTabview == .today {
                CurrentDateView()
            }
            HStack {
                Text("\(selectedTabview.text)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "person.crop.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(selectedTabview: .today)
    }
}


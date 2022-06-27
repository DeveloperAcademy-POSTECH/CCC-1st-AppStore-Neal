//
//  GridView.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/09.
//

import SwiftUI

struct GridData: Hashable {
    var firstTitle: String
    var mainTitle: String
    var secondTitle: String
    var imageTitle: String
}
let data = ["MarbleImage", "WebtoonImage", "3", "4", "5"]
let anotherData: [GridData] = [GridData(firstTitle: "같이 즐겨요", mainTitle: "웹툰이 살아났다! - 4편", secondTitle: "웹툰과 드라마로 만나는 ⎾내일⏌", imageTitle: "Webtoon"),
                               GridData(firstTitle: "", mainTitle: "오늘의 게임", secondTitle: "", imageTitle: "GamsungHealing")]
let column = [GridItem(.flexible(minimum: 100, maximum: .infinity), spacing: 30)]

struct GridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: column, spacing: 20) {
                ForEach(anotherData, id: \.self) { data in
                    ZStack {
                        Image("\(data.imageTitle)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.screenWidth * 0.8, height: UIScreen.screenHeight * 0.5, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        VStack(alignment: .leading, spacing: 4.5) {
                            if !data.firstTitle.isEmpty {
                                Text("\(data.firstTitle)")
                            }
                            Text("\(data.mainTitle)")
                                .font(.system(size: 21, weight: .bold))
                            Spacer()
                            Text("\(data.secondTitle)")
                        }.foregroundColor(.white)
                            .padding()
                    }
                    
                }
            }
        }
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

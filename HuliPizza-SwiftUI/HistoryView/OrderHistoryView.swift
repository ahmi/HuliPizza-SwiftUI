//
//  OrderHistoryView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderHistoryView: View {
    @State var imgaeID: Int = 0
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            SelectedImageView(imageName:"\(imgaeID)_250w")
                .padding(5)
            PageTitleView(title: "Pizza History", isDisplayingOrders: false)
           HistoryListView(imageID: $imgaeID)
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
        OrderHistoryView()
            .colorScheme(.dark)
            .background(Color.black)
    }
}

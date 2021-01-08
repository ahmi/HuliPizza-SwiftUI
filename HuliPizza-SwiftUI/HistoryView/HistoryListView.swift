//
//  HistoryListView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 9/1/21.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID: Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems) { item in
                NavigationLink.init(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)) {
                    OrderHistoryRowView(historyItem: item)
                }
                
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID:.constant(0))
        HistoryListView(imageID:.constant(0))
            .colorScheme(.dark)
            .background(Color.black)    }
}


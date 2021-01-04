//
//  OrderHistoryView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct HistoryListView: View {
    var body: some View {
        VStack {
            List(0..<5) { item in
                OrderHistoryRowView()
            }
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}

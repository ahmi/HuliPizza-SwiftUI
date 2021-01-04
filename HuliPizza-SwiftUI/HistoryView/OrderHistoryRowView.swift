//
//  HistoryRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderHistoryRowView: View {
    var body: some View {
            HStack(alignment: .top, spacing: 10) {
                Image ("1_100w")
                Text("your pizza history")
            }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryRowView()
    }
}

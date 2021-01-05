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
                    .clipShape(Circle())
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
                Text("your pizza history")
                    .font(.title)
                Spacer()
            }.overlay(
                Image(systemName: "chevron.right.square")
                    .foregroundColor(Color("G3"))
                    .padding()
                ,alignment: .trailing
            )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryRowView()
    }
}

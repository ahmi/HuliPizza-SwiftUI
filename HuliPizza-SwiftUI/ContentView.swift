//
//  ContentView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(2)
            //higher the priority, more of scalable capability to adjust inside the stack

            PageTitleView(title: "Order Pizza")
          //  PageTitleView(title: "Pizza History")
            //* challange 1 *//
            MenuListView()
                .layoutPriority(1)
            OrderListView()
                .layoutPriority(1)
           // HistoryListView()
            Spacer()
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}


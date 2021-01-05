//
//  ContentView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(2)
            Button(action: {self.isMenuDisplayed.toggle()}) {
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            Spacer()
            MenuListView()
                .layoutPriority(self.isMenuDisplayed ? 1.0: 0.5)
            OrderListView()
                .layoutPriority(self.isMenuDisplayed ? 0.5: 1.0)
           // Spacer()
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


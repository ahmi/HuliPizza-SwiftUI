//
//  RootTabView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 9/1/21.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
             ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            OrderHistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }.accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(UserPreferences())
    }
}

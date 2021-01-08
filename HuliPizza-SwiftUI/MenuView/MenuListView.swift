//
//  MenuListView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct MenuListView: View {
    var menuListItems = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(title:"Menu")
            NavigationView {
                List(menuListItems) { item in
                    NavigationLink(destination: MenuDetailView(menuItem: item)) {
                            MenuRowView(menuItem: item)
                    }.listRowInsets(EdgeInsets())
                }.navigationBarTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(menuListItems: MenuModel().menu)
    }
}

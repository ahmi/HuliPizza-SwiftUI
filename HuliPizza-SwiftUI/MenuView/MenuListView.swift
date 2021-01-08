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
            List(menuListItems) { item in
                MenuRowView()
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

//
//  MenuListView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack {
            Text("Menu")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
                    Image("1_100w")
                    VStack {
                        Text("Huli Chicken Pizza")
                        HStack {
                            ForEach(0 ..< 4) {item in
                                Image("Pizza Slice")
                            }
                        }
                    }

                    Spacer() // adding at the end to push image and text towards left side
                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

//
//  OrderListView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack {
            Text("Your order")
            List(0 ..< 5) { item in
                HStack(alignment:.firstTextBaseline) {
                    Text("Your order item here")
                    Spacer()
                    Text ("$0.0")
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}

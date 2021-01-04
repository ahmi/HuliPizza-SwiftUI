//
//  OrderRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack(alignment:.firstTextBaseline) {
            Text("Your order item here")
            Spacer()
            Text ("$0.0")
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
    }
}

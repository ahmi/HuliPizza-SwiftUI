//
//  OrderRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        VStack {
            HStack(alignment:.firstTextBaseline) {
                Image(systemName: "\(orderItem.id).square")
                Text(orderItem.name)
                    .font(.headline)
                Spacer()
                Text (orderItem.formattedExtendedPrice)
                    .bold()
                //fontweight modifiers can be given directly like .bold or .light
                // can also be given with font
            }
            Text(orderItem.comments)
        }.animation(.none)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
        //Dynamic type = When user changes the font size for whole phone how our font will look like
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}

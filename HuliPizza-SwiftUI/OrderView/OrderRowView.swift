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
                .font(.headline)
            Spacer()
            Text ("$0.0")
                .bold()
            //fontweight modifiers can be given directly like .bold or .light
            // can also be given with font
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
        //Dynamic type = When user changes the font size for whole phone how our font will look like
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}

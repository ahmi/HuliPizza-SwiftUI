//
//  ListHeaderView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 5/1/21.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel: OrderModel
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading,5)
            //can add multiple modifiers as [.leading, trailing, .top, .bottom]
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .font(.headline)
        .background(Color("G4"))
    }
}


struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), title: "Menu")
    }
}

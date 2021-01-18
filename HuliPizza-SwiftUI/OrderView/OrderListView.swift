//
//  OrderListView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel // no need of binding because here orderModel object will be only read only we are not using it to write
    var body: some View {
        VStack {
            List {
                Section(header:
                            ListHeaderView( orderModel: self.orderModel, title: "Your order")
                ){
                    ForEach(orderModel.orders) { order in
                        OrderRowView(orderItem: order)
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    
    func delete(at offset:IndexSet) {
        orderModel.orders.remove(atOffsets: offset)
        
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: testOrderModel)
    }
}

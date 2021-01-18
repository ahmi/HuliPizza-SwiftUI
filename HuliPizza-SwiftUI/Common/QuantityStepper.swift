//
//  QuantityStepper.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 18/1/21.
//

import SwiftUI

struct QuantityStepper: View {
    @Binding var quantity: Int
    var body: some View {
        Stepper(value: $quantity, in: 1...10) {
            Text("Quantity: \(quantity)")
                .bold()
        }
    }
}

//
//  SizePickerView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 18/1/21.
//

import SwiftUI

struct SizePickerView: View {
    @Binding var size: Size
    let sizes:[Size] = [.small, .medium, .large]
    var body: some View {
        Picker(selection: $size, label: Text("Pizza Size")){
            ForEach(sizes, id: \.self) { size in
                Text(size.formatted()).tag(size)
            }
        }.pickerStyle(SegmentedPickerStyle())
        .font(.headline)
    }
}

//
//  RatingRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct RatingRowView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 4) {item in
                Image("Pizza Slice")
            }
        }
    }
}

struct RatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        RatingRowView()
    }
}

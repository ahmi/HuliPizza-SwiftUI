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
                Image(systemName: "star.circle")
                    .font(.headline)
                    .foregroundColor(Color("G4"))
                //Download SF Symbols from from developer.apple.design
                //SP Pro is an Apple app for native icons/symbols
                //instead of our image we will use image from SF Symbols
                // Select symbol>Edit>Copy name and paste here with `systemName:`
                //They act as text and can be changed with text modifiers like font
            }
        }
    }
}

struct RatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        RatingRowView()
    }
}

//
//  RatingRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct RatingRowView: View {
    var count: Int = 4
    var rating: [String] {
        let aSymbolName = "\(count).circle"
        return Array(repeating: aSymbolName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id:\.self) {item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
                //Download SF Symbols from from developer.apple.design
                //SP Pro is an Apple app for native icons/symbols
                //instead of our image we will use image from SF Symbols
                // Select symbol>Edit>Copy name and paste here with `systemName:`
                //They act as text and can be changed with text modifiers like font
                // to remove identiable protocol error we have to provide  **id:\.self**
            }
        }
    }
}

struct RatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        RatingRowView()
    }
}

//
//  PageTitleView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.light)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.up.square")
                .font(.title)
            .padding()
            ,alignment: .trailing
        )
        //open +, type font in modifiers to see all modifiers related to font, drag and drop directly to text or type it out
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}

//
//  ListHeaderView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 5/1/21.
//

import SwiftUI

struct ListHeaderView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading,5)
            //can add multiple modifiers as [.leading, trailing, .top, .bottom]
                .foregroundColor(Color("G2"))
            Spacer()
        }
        .background(Color("G4"))
    }
}


struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(title: "Menu")
    }
}

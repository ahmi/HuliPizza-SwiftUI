//
//  MenuRowView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
            Image("1_100w")
            VStack {
                Text("Huli Chicken Pizza")
                RatingRowView()
            }
            
            Spacer() // adding at the end to push image and text towards left side
        }
    }
}


struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}

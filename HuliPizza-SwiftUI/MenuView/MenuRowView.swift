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
//                .cornerRadius(10)
                .clipShape(Capsule())
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                //value of x,y is negative then shadow will be on right and top
                .border(Color("G4"), width: 2)
            VStack(alignment:.leading) {
                Text("Huli Chicken Pizza")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.light)
                RatingRowView()
            }
            
            //Spacer()
            // adding at the end to push image and text towards left side
            //removed spacer since we modified the font and it needed adjustment
        }
    }
}


struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
          //  .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}

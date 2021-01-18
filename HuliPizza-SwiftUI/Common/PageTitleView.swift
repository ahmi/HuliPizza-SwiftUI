//
//  PageTitleView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders:Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
            
        }.overlay(
            Image(systemName:"chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ?
                                    Angle(degrees: 0.0) : Angle(degrees: 180.0)
                ).animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration:0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
            .padding()
            ,alignment: .leading
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
        //open +, type font in modifiers to see all modifiers related to font, drag and drop directly to text or type it out
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza", isDisplayingOrders: false)
    }
}

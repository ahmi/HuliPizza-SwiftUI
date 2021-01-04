//
//  ContentView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 4/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
                .font(.title)
            Image("Surf Board")
                .resizable()
                .scaledToFit()
            Text("Order Pizza")
                .font(.largeTitle)
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15 ) {
                Image("1_100w")
                Text("Huli Chicken Pizza")
                Spacer() // adding at the end to push image and text towards left side
            }
            Text("Your order")
            HStack(alignment:.firstTextBaseline) {
                Text("Your order item here")
                Spacer()
                Text ("$0.0")
            }
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}

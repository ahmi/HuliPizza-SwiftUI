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
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .font(.title)
            }
            Text("Order Pizza")
                .font(.largeTitle)
            Text("Menu")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
                    Image("1_100w")
                    VStack {
                        Text("Huli Chicken Pizza")
                        HStack {
                            ForEach(0 ..< 4) {item in
                                Image("Pizza Slice")
                            } 
                        }
                    }

                    Spacer() // adding at the end to push image and text towards left side
                }
            }
            Text("Your order")
            List(0 ..< 5) { item in
                HStack(alignment:.firstTextBaseline) {
                    Text("Your order item here")
                    Spacer()
                    Text ("$0.0")
                }
            }
            Spacer()
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

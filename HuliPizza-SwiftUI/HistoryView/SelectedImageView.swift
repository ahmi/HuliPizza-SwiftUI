//
//  SelectedImageView.swift
//  HuliPizza-SwiftUI
//
//  Created by Ahmad Waqas on 5/1/21.
//

import SwiftUI

struct SelectedImageView: View {
    var imageName:String
    var body: some View {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
        }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(imageName: "1_250w")
    }
}

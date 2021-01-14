//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Ahmad Waqas on 9/1/21.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @Binding var isPresented: Bool
    @Binding var quantity: Int
    @Binding var size: Size
    @State var comment: String = ""
    @ObservedObject var orderModel:OrderModel
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, size: size, quantity: quantity, comments: comment)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(imageName: "\(menuID)_250w")
                .padding(10)
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            Spacer()
            TextField("Add a comment to your order", text: $comment)
                .background(Color("G4"))
            Button(action: addItem){
                Text("Add")
                    .font(.title)
                .padding()
                .background(Color("G4"))
                .cornerRadius(10)
            }.padding([.bottom])
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), quantity: .constant(1), size: .constant(.small), orderModel: OrderModel())
    }
}

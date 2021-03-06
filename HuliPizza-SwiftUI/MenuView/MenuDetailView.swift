//
//  MenuDetailView.swift
//  Pizza
//
//  Created by Ahmad Waqas on 8/1/21.
//
//

import SwiftUI
///A `View`for entering in an order. Takes basic information about the order from `menuItem`
struct MenuDetailView: View {
    @ObservedObject var orderModel: OrderModel
    @EnvironmentObject var settings: UserPreferences
    @State var didOrder: Bool = false
    @State var quantity: Int = 1
    var menuItem:MenuItem
    var formattedPrice:String{
        String(format:"%3.2f",menuItem.price * Double(quantity) * settings.size.rawValue)
    }
    func addItem(){
     //   orderModel.add(menuID: menuItem.id)
        didOrder = true
    }
    
    var body: some View {
        VStack {
            PageTitleView(title: menuItem.name)
            SelectedImageView(imageName: "\(menuItem.id)_250w")
                .padding(5)
                .layoutPriority(3)
            
            Text(menuItem.description)
                .lineLimit(5)
                .padding()
                .layoutPriority(3)
                
            Spacer()
            SizePickerView(size: $settings.size)
            QuantityStepper(quantity: $quantity)
            HStack{
                Text("Order:  \(formattedPrice)")
                    .font(.headline)
                Spacer()
                Text("Order total: " + orderModel.formattedTotal )
                    .font(.headline)
            }
            .padding([.leading,.trailing])
            HStack{
                Spacer()
                Button(action: addItem) {
                   Text("Add to order")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    .background(Color("G4"))
                        .foregroundColor(Color("IP"))
                        .cornerRadius(5)
                }
//                .alert(isPresented:$didOrder){
//                    Alert(title: Text("Pizza Ordered"), message: Text("You have ordered:" + self.menuItem.name))
//                }
                .sheet(isPresented: $didOrder) {
                    ConfirmView(menuID: menuItem.id, isPresented: self.$didOrder, quantity: self.$quantity, size: self.$settings.size, orderModel: self.orderModel)
                }
                Spacer()
            }
            .padding(.top)
            Spacer()
        }
        
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(orderModel:OrderModel(), menuItem: testMenuItem)
            .environmentObject(UserPreferences())
        //@Binding variable has no initial value since it is a pointer to some object which is going to be changed but in preview we have to provide constant value, hence we change into constant intialised value
        //Use State and Binding variable with View related object and ObjservedObject for Model objects
    }
}

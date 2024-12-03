//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Mark Santoro on 12/3/24.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order

    
    var body: some View {
        Form{
            Section{
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zipcode", text: $order.zip)
            }
            
            Section{
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                }
            }
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}

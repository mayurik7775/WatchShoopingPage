//
//  CartView.swift
//  myapp
//
//  Created by Mac on 19/07/23.
//

import SwiftUI

struct CartView: View {
   
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }else{
                
            Text("Your Cart is Empty")
            }
            
        }
        .navigationTitle(Text("My Watch Collection"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

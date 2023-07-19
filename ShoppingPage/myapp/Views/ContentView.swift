//
//  ContentView.swift
//  myapp
//
//  Created by Mac on 19/07/23.
//

import SwiftUI


struct ContentView: View {
 
    @StateObject var cartManager = CartManager()
    var colums = [GridItem(.adaptive(minimum: 160), spacing: 20)]

    var body: some View {
        NavigationView {
        ScrollView {
        LazyVGrid(columns: colums, spacing: 20){
            ForEach(productList, id :\.id) {
             product in
            ProductCart(product: product)
                .environmentObject(cartManager)
             }
         }
        .padding()
       }
        .navigationTitle(Text("Watches"))
        .toolbar {
            NavigationLink {
                CartView()
                    .environmentObject(cartManager)
            }label: {
                CartButton(numberofProducts: cartManager.products.count)
            }
        }
            NavigationLink{
                ContentView()
            }label: {

            }
      }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

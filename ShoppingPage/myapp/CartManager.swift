//
//  CartManager.swift
//  myapp
//
//  Created by Mac on 19/07/23.
//

import Foundation

class CartManager : ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: String = "0"
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id }
       // total -= product.price
    }
}

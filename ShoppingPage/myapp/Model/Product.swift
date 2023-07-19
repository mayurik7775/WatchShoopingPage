//
//  Product.swift
//  myapp
//
//  Created by Mac on 19/07/23.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name: String
    var image : String
    var price : String
}
var productList = [Product(name: "ABREXO Stylish Watch", image: "wa9", price: "220"),
                   Product(name: "Latest Anolog Watch", image: "wa2", price: "329"),
                   Product(name: "Letest Watch", image: "wa3", price: "150"),
                   Product(name: "Beautiful Sport Watch", image: "wa4", price: "120"),
                   Product(name: "Fashionate Men Watch", image: "wa5", price: "200"),
                   Product(name: "Gorgeous Women Watch", image: "wa6", price: "220"),
                   Product(name: "Female Watch", image: "wa7", price: "450"),
                   Product(name: "Versatile Brand", image: "wa8", price: "290"),
                   Product(name: "Latest Watch", image: "wa1", price: "500"),
                   Product(name: "Latest Women Watch", image: "wa10", price: "500")]

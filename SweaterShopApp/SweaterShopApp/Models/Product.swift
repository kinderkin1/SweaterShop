//
//  Product.swift
//  SweaterShopApp
//
//  Created by Kinder on 23/12/2021.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Ораньжевый свитер", image: "sweater1", price: 2400),
                   Product(name: "Красный свитер", image: "sweater2", price: 3400),
                   Product(name: "Песочный", image: "sweater3", price: 7900),
                   Product(name: "Морской свитер", image: "sweater4", price: 1200),
                   Product(name: "Кремовый свитер", image: "sweater5", price: 2399),
                   Product(name: "Бежевый свитер", image: "sweater6", price: 3465),
                   Product(name: "Серый свитер", image: "sweater7", price: 5054),
                   Product(name: "Теплый свитер", image: "sweater8", price: 3083)]

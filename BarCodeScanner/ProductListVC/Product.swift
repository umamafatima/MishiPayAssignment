//
//  Product.swift
//  BarCodeScanner
//
//  Created by Truweight Wellness Pvt Ltd on 01/01/21.
//  Copyright © 2021 Truweight Wellness Pvt Ltd. All rights reserved.
//

import Foundation

struct Product {
    let name: String?
    let price: String?
    let image: String?

    init(data: [String: AnyObject]) {
        if let name = data["name"] as? String {
            self.name = name
        } else { self.name = nil }
        if let price = data["price"] as? String {
            self.price = price
        } else { self.price = nil }
        if let image = data["image"] as? String {
            self.image = image
        } else { self.image = nil }
    }
}

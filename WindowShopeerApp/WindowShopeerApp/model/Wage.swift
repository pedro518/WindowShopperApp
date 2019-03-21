//
//  Wage.swift
//  WindowShopeerApp
//
//  Created by Pedro Antonio Ruiz Cuesta on 21/03/2019.
//  Copyright © 2019 Pedro Antonio Ruiz Cuesta. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}

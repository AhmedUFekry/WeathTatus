//
//  DoubleExtention.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import Foundation
extension Double {
    func truncate(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded(.down) / divisor
    }
}

//
//  ColorRGB.swift
//  ColorPalette
//
//  Created by Kai Lee on 4/21/23.
//

import Foundation

struct ColorRGB: Codable, Identifiable {
    var id = UUID()
    let red: Double
    let green: Double
    let blue: Double
}

extension ColorRGB {
    static var testingColorRGB: [ColorRGB] = [
        ColorRGB(red: 214, green: 78, blue: 69),
        ColorRGB(red: 247, green: 242, blue: 163),
        ColorRGB(red: 201, green: 216, blue: 147),
        ColorRGB(red: 57, green: 141, blue: 112)
    ]
}

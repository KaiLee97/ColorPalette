//
//  ColorPaletteViewModel.swift
//  ColorPalette
//
//  Created by Kai Lee on 4/21/23.
//

import Foundation

class ColorPaletteViewModel: ObservableObject {
    @Published var colorPalette: [ColorRGB]
    
    init() {
        colorPalette = ColorRGB.testingColorRGB
    }
    
    @MainActor
    func loadRandomPalette() async {
        guard let palette = await ColorMindAPIManager().getRandomColorPalette() else {
            colorPalette = ColorRGB.testingColorRGB
            return
        }
        colorPalette = palette
    }
    
}

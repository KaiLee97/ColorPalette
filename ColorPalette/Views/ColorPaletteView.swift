//
//  ColorPaletteView.swift
//  ColorPalette
//
//  Created by Kai Lee on 4/21/23.
//

import SwiftUI

struct ColorPaletteView: View {
    @StateObject var viewModel = ColorPaletteViewModel()
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            ForEach(viewModel.colorPalette, id: \.id) { color in
                ColorSection(color: color)
            }
        }
        .task {
            await viewModel.loadRandomPalette()
        }
        .onTapGesture {
            Task {
                await viewModel.loadRandomPalette()
            }
        }
    }
}

struct ColorPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPaletteView()
    }
}

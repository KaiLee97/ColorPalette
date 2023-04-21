//
//  ColorSection.swift
//  ColorPalette
//
//  Created by Kai Lee on 4/21/23.
//

import SwiftUI

struct ColorSection: View {
    @State var color: ColorRGB
    var body: some View {
        ZStack() {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.size.height/4)
                .foregroundColor(
                    Color(red: color.red/255, green: color.green/255, blue: color.blue/255))
        }
    }
}

struct ColorSection_Previews: PreviewProvider {
    static var previews: some View {
        ColorSection(color: ColorRGB.testingColorRGB.first!)
    }
}

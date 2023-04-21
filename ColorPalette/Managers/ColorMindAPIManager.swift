//
//  ColorMindAPIManager.swift
//  ColorPalette
//
//  Created by Kai Lee on 4/21/23.
//

import Foundation

class ColorMindAPIManager: ObservableObject {
    private let colorAPIURL = "http://colormind.io/api/"
    private let body: [String:Any] = [
        "model": "default"
    ]
    
    init() {}
    
    func getRandomColorPalette() async -> [ColorRGB]? {
        guard let url = URL(string: colorAPIURL) else {
            fatalError("Bad URL")
        }
        var request = URLRequest(url: url, timeoutInterval: .infinity)
        request.httpMethod = "POST"
        let jsonData = try? JSONSerialization.data(withJSONObject: body)
        request.httpBody = jsonData
        
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            let colorPalette = try JSONDecoder().decode([ColorRGB].self, from: data)
            return colorPalette
        } catch {
            print("Failed api call")
        }
        return nil
    }
    
}

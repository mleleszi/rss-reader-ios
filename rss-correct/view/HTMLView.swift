//
//  HTMLView.swift
//  rss-correct
//
//  Created by Marcell Leleszi on 2022. 04. 27..
//

import SwiftUI
import WebKit

struct HTMLView: UIViewRepresentable {
    let text: String
      
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let resizedText = resizeImages()
        uiView.loadHTMLString(resizedText, baseURL: nil)
    }
    
    func resizeImages() -> String {
        print(UIScreen.main.bounds.width)
        return text.replacingOccurrences(of: "<img src", with: "<img width=\(UIScreen.main.bounds.width * 3 * 0.9) src")
    }
}



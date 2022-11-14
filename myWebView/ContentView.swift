//
//  ContentView.swift
//  myWebView
//
//  Created by Barış Aytimur on 5.10.2022.
//

import SwiftUI

import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "http://10.0.0.67:8080/?userId=20185635"
    
    let webView = WKWebView()
    
    var body: some View {
        VStack {
            VStack() {
                WebView(url: URL(string: urlString)!).frame()
            }
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

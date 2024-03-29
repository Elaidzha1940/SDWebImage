//  /*
//
//  Project: SDWebImageP
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 28.03.2024
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageLoader(
                url: "https://picsum.photos/200/300?grayscaleh",
                contentMode: .fit)
            .cornerRadius(15)
        }
        .frame(width: 300, height: 400)
    }
}

#Preview {
    ContentView()
}


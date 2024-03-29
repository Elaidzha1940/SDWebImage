//  /*
//
//  Project: SDWebImageP
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 28.03.2024
//
//  */

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WebImage(url: URL(string: "https://picsum.photos/200/300?grayscaleh")) { image in
                
                image.resizable()
                
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
                //                    .overlay(
                //                        ProgressView()
                //                    )
            }
            //            .onSuccess(perform: { image, data, cacheType in
            //                //
            //            }
            //                .onFailure(perform: { error in
            //                    //
            //                }
            .indicator(.activity)
            .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    ContentView()
}


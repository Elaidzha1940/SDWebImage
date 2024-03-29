//  /*
//
//  Project: SDWebImageP
//  File: SDWebImageLoader.swift
//  Created by: Elaidzha Shchukin
//  File: 29.03.2024
//
//  */

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        SDWebImageLoader(url: url, contentMode: contentMode)
        // Add another SDK / Kiggfisher maybe
    }
}

fileprivate struct SDWebImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: url)) { image in
                
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
    SDWebImageLoader(url: "")
}

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
            
        }
    }
}

#Preview {
    ContentView()
}


//WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")) { image in
//    image.resizable() // Control layout like SwiftUI.AsyncImage, you must use this modifier or the view will use the image bitmap size
//} placeholder: {
//    Rectangle().foregroundColor(.gray)
//}
//// Supports options and context, like `.delayPlaceholder` to show placeholder only when error
//.onSuccess { image, data, cacheType in
//    // Success
//    // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
//}
//.indicator(.activity) // Activity Indicator
//.transition(.fade(duration: 0.5)) // Fade Transition with duration
//.scaledToFit()
//.frame(width: 300, height: 300, alignment: .center)

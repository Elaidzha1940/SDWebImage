SDWebImage in SwiftUI | Swift Package.
==========

SDWebImageSwiftUI
----------
````ruby
https://github.com/SDWebImage/SDWebImageSwiftUI.git
````
----------

Features
--------
Since SDWebImageSwiftUI is built on top of SDWebImage, it provide both the out-of-box features as well as advanced powerful features you may want in real world Apps.

- Animated Image full-stack solution, with balance of CPU && RAM
- Progressive image loading, with animation support
- Reusable download, never request single URL twice
- URL Request / Response Modifier, provide custom HTTP Header
- Image Transformer, apply corner radius or CIFilter
- Multiple caches system, query from different source
- Multiple loaders system, load from different resource
----------

````ruby 
var body: some View {
    WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")) { image in
        image.resizable() // Control layout like SwiftUI.AsyncImage, you must use this modifier or the view will use the image bitmap size
    } placeholder: {
            Rectangle().foregroundColor(.gray)
    }
    // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
    .onSuccess { image, data, cacheType in
        // Success
        // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
    }
    .indicator(.activity) // Activity Indicator
    .transition(.fade(duration: 0.5)) // Fade Transition with duration
    .scaledToFit()
    .frame(width: 300, height: 300, alignment: .center)
}
````
----------


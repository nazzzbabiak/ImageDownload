//
//  UrlImage.swift
//  ImageDownload
//
//  Created by Nazar Babyak on 24.03.2022.
//

import SwiftUI

struct UrlImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadData {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}

struct UrlImage_Previews: PreviewProvider {
    static var previews: some View {
        UrlImage(url: "")
    }
}

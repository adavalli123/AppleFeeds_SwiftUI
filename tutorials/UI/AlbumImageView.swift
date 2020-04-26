//
//  AlbumImageView.swift
//  tutorials
//
//  Created by sadavalli on 4/25/20.
//  Copyright © 2020 sadavalli. All rights reserved.
//

import SwiftUI

struct AlbumImageView: View {
    @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()
    
    init(url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        VStack {
            Image(uiImage: imageLoader.data != nil ? UIImage(data:imageLoader.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height:100)
        }
    }
}

struct AlbumImageView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumImageView(url: "")
    }
}

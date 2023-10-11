//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 24-09-23.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
}

//#Preview {
//    RemoteImage()
//}


//#Preview {
//    let imageUrl = "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg"
//    AppetizerRemoteImage(urlString: imageUrl)
//}

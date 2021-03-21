//
//  PhotoLibrary.swift
//  acesdv
//
//  Created by Shovkovy on 3/21/21.
//

import SwiftUI

struct PhotoLibrary: View {
    @State var list_of_images: UIImage?
    
    
    @State var images = ["TestImage", "PopularTesting", "NewTesting", "RecommendedTesting"]
    var body: some View {
        VStack (alignment: .center) {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(0..<images.count) {
                    Image(self.images[$0])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
            .padding()
            Spacer()
            SafetyQuickExit()
                .offset(y: 35)
        }
        .navigationBarTitle("Secure Photo Library", displayMode: .inline)
    }
}

struct PhotoLibrary_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PhotoLibrary()
        }
    }
}

//
//  PhotoLibrary.swift
//  acesdv
//
//  Created by Shovkovy on 3/21/21.
//

import SwiftUI

struct PhotoLibrary: View {
    var body: some View {
        VStack (alignment: .center) {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(list_of_images, id: \.self) { image in
                    Image(uiImage: image)
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

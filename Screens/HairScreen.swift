//
//  ContentView.swift
//  acesdv
//
//  Created by Shovkovy on 12/29/20.
//
import Foundation
import SwiftUI


struct HairScreen: View {
    
    let trendingImages = ["Trending1", "Trending2", "Trending3", "Trending4"]
    let recommendedImages = ["Recommended1", "Recommended2", "Recommended3", "Recommended4", "Recommended5"]
    let popularImages = ["Popular1", "Popular2", "Popular3", "Popular4"]
    let newImages = ["New1", "New2", "New3"]
    
    
    var body: some View {
        HairView(recommendedImages: recommendedImages, trendingImages: trendingImages, popularImages: popularImages, newImages: newImages)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HairScreen()
    }
}

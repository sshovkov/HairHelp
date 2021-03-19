//
//  ContentView.swift
//  acesdv
//
//  Created by Shovkovy on 12/29/20.
//

import SwiftUI


struct HairScreen: View {
    
    let trendingImages = ["TestImage", "TestImage", "TestImage", "TestImage"]
    let recommendedImages = ["RecommendedTesting", "RecommendedTesting", "RecommendedTesting", "RecommendedTesting", "RecommendedTesting"]
    let popularImages = ["PopularTesting", "PopularTesting", "PopularTesting"]
    let newImages = ["NewTesting", "NewTesting", "NewTesting", "NewTesting"]
    
    
    var body: some View {
        HairView(recommendedImages: recommendedImages, trendingImages: trendingImages, popularImages: popularImages, newImages: newImages)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HairScreen()
    }
}

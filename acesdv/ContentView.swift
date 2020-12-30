//
//  ContentView.swift
//  acesdv
//
//  Created by Shovkovy on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var trendingTapped: Bool = true
    @State var recommendedTapped: Bool = false
    @State var popularTapped: Bool = false
    @State var newTapped: Bool = false
    
    @State var selection = "Trending"
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                Text("Explore Your")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .offset(x: 30, y: 10.0)
                Text("Options")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .offset(x: 30, y: 10.0)
                
                HStack {
                    Button(action: {
                        self.selection = "Trending"
                        self.trendingTapped = true
                        self.recommendedTapped = false
                        self.popularTapped = false
                        self.newTapped = false
                    },
                           label: {
                        Text("Trending")
                            .fontWeight(trendingTapped ? .bold : .regular)
                    })
                    Button(action: {
                        self.selection = "Recommended"
                        self.trendingTapped = false
                        self.recommendedTapped = true
                        self.popularTapped = false
                        self.newTapped = false
                    },
                           label: {
                        Text("Recommended")
                            .fontWeight(recommendedTapped ? .bold : .regular)
                    })
                    Button(action: {
                        self.selection = "Popular"
                        self.trendingTapped = false
                        self.recommendedTapped = false
                        self.popularTapped = true
                        self.newTapped = false
                    },
                           label: {
                        Text("Popular")
                            .fontWeight(popularTapped ? .bold : .regular)
                    })
                    Button(action: {
                        self.selection = "New"
                        self.trendingTapped = false
                        self.recommendedTapped = false
                        self.popularTapped = false
                        self.newTapped = true
                    },
                           label: {
                        Text("New")
                            .fontWeight(newTapped ? .bold : .regular)
                    })
                }
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity)
                .font(.title2)
                .padding(.top, 40)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        if self.selection == "Trending" {
                            CardView(imageName: "TestImage")
                                .padding(.trailing, 5)
                            CardView(imageName: "TestImage")
                                .padding(.trailing, 5)
                            CardView(imageName: "TestImage")
                                .padding(.trailing, 5)
                            CardView(imageName: "TestImage")
                                .padding(.trailing, 5)
                        }
                        if self.selection == "Recommended" {
                            CardView(imageName: "RecommendedTesting")
                                .padding(.trailing, 5)
                            CardView(imageName: "RecommendedTesting")
                                .padding(.trailing, 5)
                            CardView(imageName: "RecommendedTesting")
                                .padding(.trailing, 5)
                        }
                        if self.selection == "Popular" {
                            CardView(imageName: "PopularTesting")
                                .padding(.trailing, 5)
                            CardView(imageName: "PopularTesting")
                                .padding(.trailing, 5)
                            CardView(imageName: "PopularTesting")
                                .padding(.trailing, 5)
                        }
                        if self.selection == "New" {
                            CardView(imageName: "NewTesting")
                                .padding(.trailing, 5)
                            CardView(imageName: "NewTesting")
                                .padding(.trailing, 5)
                        }
                    }
                }
                .padding(.top, 40.0)
                .offset(x: 10)
                
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .offset(x: 20)
                    .padding(.top, 40.0)
                
            // end of VStack
            }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .topLeading)
        
            HStack{
                Image("person.crop.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .offset(x: -30, y: 10.0)
            }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topTrailing)
        }
    }
}

struct CardView: View {
    let imageName: String
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.purple,.pink]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 160, height:200, alignment: .center)
                .cornerRadius(20)
            VStack(){
                Image("\(imageName)").resizable().frame(width: 160, height: 200, alignment: .top).cornerRadius(20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

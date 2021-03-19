//
//  HairView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI


struct HairView: View {
    @State var selection: String = "Trending"
    @State var trendingTapped: Bool = true
    @State var recommendedTapped: Bool = false
    @State var popularTapped: Bool = false
    @State var newTapped: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HairViewTitle()
                
                HairViewCategoryButtons(selection: $selection, trendingTapped: $trendingTapped, recommendedTapped: $recommendedTapped, popularTapped: $popularTapped, newTapped: $newTapped)
                
                HairViewScrollView(selection: $selection)
                
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 40.0)
                    .offset(x: 20)
                
                HairViewIconGroup()
                
            // end of VStack
            }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .topLeading)
            
            HairViewProfileIcon()
        }
        
    }
}

struct CardView: View {
    let imageName: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.purple,.pink]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 230, height:250, alignment: .center)
                .cornerRadius(20)
            VStack(){
                Image("\(imageName)").resizable().frame(width: 230, height: 250, alignment: .top).cornerRadius(20)
            }
        }
    }
}

struct HairViewTitle: View {
    var body: some View {
        Text("Explore Your")
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
            .offset(x: 30, y: 10.0)
        Text("Options")
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
            .offset(x: 30, y: 10.0)
    }
}

struct HairViewCategoryButtons: View {
    @Binding var selection: String
    @Binding var trendingTapped: Bool
    @Binding var recommendedTapped: Bool
    @Binding var popularTapped: Bool
    @Binding var newTapped: Bool
    
    var body: some View {
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
    }
}

struct HairViewScrollView: View {
    @Binding var selection: String
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                switch selection {
                case "Recommended":
                    CardView(imageName: "RecommendedTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "RecommendedTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "RecommendedTesting")
                        .padding(.trailing, 5)
                case "Popular":
                    CardView(imageName: "PopularTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "PopularTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "PopularTesting")
                        .padding(.trailing, 5)
                case "New":
                    CardView(imageName: "NewTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "NewTesting")
                        .padding(.trailing, 5)
                    CardView(imageName: "NewTesting")
                        .padding(.trailing, 5)
                default:
                    CardView(imageName: "TestImage")
                        .padding(.trailing, 5)
                    CardView(imageName: "TestImage")
                        .padding(.trailing, 5)
                    CardView(imageName: "TestImage")
                        .padding(.trailing, 5)
                    CardView(imageName: "TestImage")
                        .padding(.trailing, 5)
                }
            }
        }
        .padding(.top, 40.0)
        .offset(x: 10)
    }
}

struct PersonIcon: View {
    var body: some View {
        Image("person.crop.circle")
            .resizable()
            .frame(width: 80, height: 80)
            .padding(.trailing, 15)
    }
}

struct HairViewIconGroup: View {
    var body: some View {
        HStack {
            Image("person.crop.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.horizontal, 15)
            PersonIcon()
            PersonIcon()
            PersonIcon()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.top, 30)
        
        HStack {
            Image("person.crop.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.horizontal, 15)
            PersonIcon()
            PersonIcon()
            PersonIcon()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.top, 30)
    }
}

struct HairViewProfileIcon: View {
    var body: some View {
        HStack{
            Image("person.crop.circle")
                .resizable()
                .frame(width: 70, height: 70)
                .offset(x: -20, y: 5)
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topTrailing)
    }
}

//struct HairView_Preview: PreviewProvider {
//    static var previews: some View {
//        HairView()
//    }
//}

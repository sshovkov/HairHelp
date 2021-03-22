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
    
    let recommendedImages: [String]
    let trendingImages : [String]
    let popularImages: [String]
    let newImages: [String]
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {
                    HairViewTitle()
                    
                    HairViewCategoryButtons(selection: $selection, trendingTapped: $trendingTapped, recommendedTapped: $recommendedTapped, popularTapped: $popularTapped, newTapped: $newTapped)
                    
                    HairViewScrollView(selection: $selection, recommendedImages: recommendedImages, trendingImages: trendingImages, popularImages: popularImages, newImages: newImages)
                    
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 40.0)
                        .offset(x: 20)
                    
                    HairViewIconGroup()
                    
                }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                HairViewProfileIcon()
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct CardView: View {
    let imageName: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("Lavender"),Color("Mauve")]), startPoint: .leading, endPoint: .trailing))
            
            Image("\(imageName)")
                .resizable()
                .scaledToFill()
        }
        .frame(width: 230, height:250, alignment: .center)
        .cornerRadius(20)
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
    @Environment(\.colorScheme) var colorScheme
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
                    .foregroundColor(colorScheme == .dark ? .white : .black)
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
                    .foregroundColor(colorScheme == .dark ? .white : .black)
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
                    .foregroundColor(colorScheme == .dark ? .white : .black)
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
                    .foregroundColor(colorScheme == .dark ? .white : .black)
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
    let recommendedImages: [String]
    let trendingImages : [String]
    let popularImages: [String]
    let newImages: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                switch selection {
                case "Recommended":
                    ForEach(0..<recommendedImages.count) {
                        CardView(imageName: self.recommendedImages[$0]).padding(.trailing, 5)
                    }
                case "Popular":
                    ForEach(0..<popularImages.count) {
                        CardView(imageName: self.popularImages[$0]).padding(.trailing, 5)
                    }
                case "New":
                    ForEach(0..<newImages.count) {
                        CardView(imageName: self.newImages[$0]).padding(.trailing, 5)
                    }
                default:
                    ForEach(0..<trendingImages.count) {
                        CardView(imageName: self.trendingImages[$0]).padding(.trailing, 5)
                    }
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
            HairIconTemplate(name: "Haircut")
            Spacer()
            HairIconTemplate(name: "Coloring")
            Spacer()
            HairIconTemplate(name: "Treatments")
            Spacer()
            HairIconTemplate(name: "Styling")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(20)
        
        HStack {
            HairIconTemplate(name: "Shaving")
            Spacer()
            HairIconTemplate(name: "Shampoo")
            Spacer()
            HairIconTemplate(name: "Classes")
            Spacer()
            HairIconTemplate(name: "More")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(20)
    }
}

struct HairIconTemplate: View {
    @State private var showingAlert = false
    let name: String
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color("Lavender"))
                    .frame(width: 70, height: 70)
                Image(name)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .colorInvert()
            }
            .onTapGesture {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert, content: {
                Alert(title: Text("Out of Scope"), message: Text("This feature is currently unavailable."), dismissButton: .default(Text("Ok")))
            })
            Text(name)
                .opacity(0.5)
        }
    }
}

struct HairViewProfileIcon: View {
    var body: some View {
        HStack{
            NavigationLink(
                destination: PasswordScreen()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true),
                label: {
                    Image("person.crop.circle")
                        .renderingMode(.original)
                        .navigationBarHidden(true)
                        
            })
                .offset(x: -20, y: 5)
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topTrailing)
    }
}

struct HairView_Preview: PreviewProvider {
    static var previews: some View {
        HairView(recommendedImages: ["RecommendedTesting", "RecommendedTesting", "RecommendedTesting", "RecommendedTesting", "RecommendedTesting"], trendingImages: ["TestImage", "NoImage", "NoImage", "NoImage"], popularImages: ["PopularTesting", "PopularTesting", "PopularTesting"], newImages: ["NewTesting", "NewTesting", "NewTesting", "NewTesting"])
    }
}

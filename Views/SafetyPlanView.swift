//
//  SafetyPlanView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct SafetyPlanView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    SafetyChatBanner()
                    SafetyCategories()
                    SafetyDropDowns()
                    Spacer()
                    SafetyQuickExit()
                        .offset(y: 35)
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct SafetyChatBanner: View {
    @State private var showChat = false
    var body: some View {
        
        Button(action: {
                showChat = true
        }, label: {
            VStack {
                Text("GET HELP NOW")
                    .font(.title3)
                HStack{
                    Text("Talk to a professional")
                    Image("ChatIcon")
                }
            }
        })
        .frame(width: 415, height: 85)
        .background(Color("Lavender").opacity(0.35))
        .foregroundColor(Color("DarkPurple"))
        .sheet(isPresented: $showChat) {
            ChatScreen()
        }
    }
}

struct SafetyCategories: View {
    var body: some View {
        HStack {
            Text("My Safety Plan")
                .padding(.horizontal)
                .font(.title)
            NavigationLink(
                destination: MoreInfoScreen(),
                label: {
                    Image("QuestionIcon")
                        .renderingMode(.original)
                        .frame(width:38, height: 38)
                        .padding(.horizontal, 10)
                })
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
        .padding(.top, 30)
    }
}

struct SafetyDropDowns: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                Button(action: {
                    print("pressed")
                }, label: {
                    HStack {
                        Text("Physical Safety")
                            .padding(.trailing, 160)
                        Image("RightChevron")
                    }
                })
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding(.top, 30)
                
                Button(action: {
                    print("pressed")
                }, label: {
                    HStack {
                        Text("Emotional Safety")
                            .padding(.trailing, 155)
                        Image("RightChevron")
                    }
                })
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding(.top, 30)
                
                Button(action: {
                    print("pressed")
                }, label: {
                    HStack {
                        Text("Legal Safety")
                            .padding(.trailing, 185)
                        Image("RightChevron")
                    }
                })
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding(.top, 30)
                
                Button(action: {
                    print("pressed")
                }, label: {
                    HStack {
                        Text("Leaving a Relationship")
                            .padding(.trailing, 115)
                        Image("RightChevron")
                    }
                })
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding(.top, 30)
                
                Button(action: {
                    print("pressed")
                }, label: {
                    HStack {
                        Text("My Documents")
                            .padding(.trailing, 165)
                        Image("RightChevron")
                    }
                })
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding(.top, 30)
            }
        }
    }
        
}

struct SafetyQuickExit: View {
    @State private var showHairView = false
    var body: some View {
        VStack {
            NavigationLink(
                destination: HairScreen(),
                isActive: $showHairView,
                label: {
                    EmptyView()
                })
            
            Button(action: {
                showHairView = true
            }, label: {
                Text("SAFETY ALART")
            })
            .frame(width: 189, height: 38)
            .background(Color("Mauve"))
            .foregroundColor(.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            
            Button(action: {
                showHairView = true
            }, label: {
                Text("TO LEAVE THIS SCREEN QUICKLY,\nCLICK HERE")
                    .font(.title2)
                    .multilineTextAlignment(.center)
            })
            .frame(width: 414, height: 112)
            .background(Color("Lavender").opacity(0.35))
            .foregroundColor(Color("DarkPurple"))
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
        var corners: UIRectCorner = .allCorners

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
}

struct SafetyPlanView_Preview: PreviewProvider {
    static var previews: some View {
        SafetyPlanView()
    }
}

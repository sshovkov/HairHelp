//
//  SafetyPlanView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct SafetyPlanView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                SafetyChatBanner()
                SafetyCategories()
                SafetyDropDowns()
                SafetyQuickExit()
            }
        }
    }
}

struct SafetyChatBanner: View {
    var body: some View {
        Button(action: {print("pressed")}, label: {
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
        
    }
}

struct SafetyCategories: View {
    var body: some View {
        HStack {
            Text("My Safety Plan")
                .padding(.trailing, 60)
            Text("Resources")
                .padding(.trailing, 20)
            Image("QuestionIcon")
                .frame(width:38, height: 38)
        }
        .padding(.top, 40)
    }
}

struct SafetyDropDowns: View {
    var body: some View {
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

struct SafetyQuickExit: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("SAFETY ALART")
            })
            .frame(width: 189, height: 38)
            .background(Color("Mauve"))
            .foregroundColor(.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            
            Button(action: {
                print("pressed")
            }, label: {
                Text("TO LEAVE THIS SCREEN QUICKLY,\nCLICK HERE")
                    .font(.title2)
                    .multilineTextAlignment(.center)
            })
            .frame(width: 414, height: 112)
            .background(Color("Lavender").opacity(0.35))
            .foregroundColor(Color("DarkPurple"))
        }
        .offset(y: 50)
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

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
    let physicalSafetyOptions = [
        DropDownOptions(key: "Identify your partner's use and level of force", val: ""),
        DropDownOptions(key: "Know where the nearest public phone is located", val: ""),
        DropDownOptions(key: "Identify safe areas in your residence", val: "Places with pathways to exits and away from weapons, try to move to those areas before arguments escalate."),
    ]
    
    let emotionalSafetyOptions = [
        DropDownOptions(key: "Identify and work towards achievable goals", val: ""),
        DropDownOptions(key: "Create a support system", val: ""),
        DropDownOptions(key: "Create peaceful space for yourself", val: ""),
    ]
    
    let legalSafetyOptions = [
        DropDownOptions(key: "Identify non-law enforcement service providers near you", val: ""),
        DropDownOptions(key: "Determine if it's safe for you to call 911 during an emergency", val: ""),
        DropDownOptions(key: "Determine if protective orders are right for you and your situation", val: ""),
    ]
    
    let relationshipOptions = [
        DropDownOptions(key: "Set aside money", val: ""),
        DropDownOptions(key: "Establish where you can go to get help", val: ""),
        DropDownOptions(key: "Record evidence of physical abuse", val: "Take pictures of injuries or keep a journal of violent events"),
    ]
    
    let documentOptions = [
        DropDownOptions(key: "Scan driver's license", val: ""),
        DropDownOptions(key: "Scan birth certificate", val: ""),
        DropDownOptions(key: "Scan social security card", val: ""),
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 15) {
                DropDown(name: "Physical Safety", options: physicalSafetyOptions)
                DropDown(name: "Emotional Safety", options: emotionalSafetyOptions)
                DropDown(name: "Legal Safety", options: legalSafetyOptions)
                DropDown(name: "Leaving a Relationship", options: relationshipOptions)
                DropDown(name: "My Documents", options: documentOptions)
            }
        }.padding(.top, 35)
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
            .frame(width: 414, height: 120)
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

struct DropDownOptions {
    let key: String
    let val: String
}

struct SafetyPlanView_Preview: PreviewProvider {
    static var previews: some View {
        SafetyPlanView()
    }
}

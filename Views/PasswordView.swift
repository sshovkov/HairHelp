//
//  Password.swift
//  acesdv
//
//  Created by Shovkovy on 3/21/21.
//

import SwiftUI

struct PasswordView: View {
    @State private var flag = false
    @State private var showSafetyFront = false
    @State private var showingAlert = false
    @State var input: [String] = []
    
    @State private var showHairView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Password_Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Group {
                        Image("Lock")
                            .frame(width: 42, height: 54)
                            .opacity(0.6)
                        Text("Enter Passcode")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        ZStack(alignment: .leading) {
                            HStack {
                                Circle()
                                    .stroke(Color("DarkPurple"))
                                    .frame(width: 18, height: 18)
                                Circle()
                                    .stroke(Color("DarkPurple"))
                                    .frame(width: 18, height: 18)
                                Circle()
                                    .stroke(Color("DarkPurple"))
                                    .frame(width: 18, height: 18)
                                Circle()
                                    .stroke(Color("DarkPurple"))
                                    .frame(width: 18, height: 18)
                            }
                            HStack {
                                ForEach(input, id: \.self) { num in
                                    Circle()
                                        .fill(Color("DarkPurple"))
                                        .frame(width: 18, height: 18)
                                }
                            }
                        }
                    }
    
                    Spacer()
                    
                    HStack {
                        NavigationLink(destination: SafetyPlanScreen(), isActive: $flag) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        NavigationLink(destination: HairScreen(), isActive: $showSafetyFront) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "1", subtext: "")
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "2", subtext: "A B C").padding(.horizontal, 20)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "3", subtext: "D E F")
                    }.padding(.vertical, 10)
                    
                    HStack {
                        NavigationLink(destination: SafetyPlanScreen(), isActive: $flag) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        NavigationLink(destination: HairScreen(), isActive: $showSafetyFront) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "4", subtext: "G H I")
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "5", subtext: "J K L").padding(.horizontal, 20)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "6", subtext: "M N O")
                    }.padding(.vertical, 10)
                    
                    HStack {
                        NavigationLink(destination: SafetyPlanScreen(), isActive: $flag) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        NavigationLink(destination: HairScreen(), isActive: $showSafetyFront) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "7", subtext: "P Q R S")
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "8", subtext: "T U V").padding(.horizontal, 20)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "9", subtext: "W X Y Z")
                    }.padding(.vertical, 10)
                    
                    HStack {
                        NavigationLink(destination: SafetyPlanScreen(), isActive: $flag) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        NavigationLink(destination: HairScreen(), isActive: $showSafetyFront) { EmptyView() }
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        KeypadButton(flag: $flag, showSafetyFront: $showSafetyFront, input: $input, name: "0", subtext: "")
                    }.padding(.vertical, 10)
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink(
                            destination: HairScreen(),
                            isActive: $showHairView,
                            label: {
                                EmptyView()
                            })
                        
                        Button(action: {
                            showingAlert = true
                        }, label: {
                            Text("Emergency")
                                .foregroundColor(.black)
                                .padding(.trailing, 50)
                                .opacity(0.5)
                                .font(.title2)
                        })
                        .alert(isPresented: $showingAlert, content: {
                            Alert(title: Text("Out of Scope"), message: Text("This feature is currently unavailable."), dismissButton: .default(Text("Ok")))
                        })
                        
//                        Text("Emergency")
//                            .foregroundColor(.black)
//                            .padding(.trailing, 50)
//                            .opacity(0.5)
//                            .font(.title2)
                        
                        if input.count == 0 {
                            Button(action: {
                                showHairView = true
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.black)
                                    .padding(.leading, 50)
                                    .opacity(0.5)
                                    .font(.title2)
                            })
                        } else {
                            Button(action: {
                                input.removeLast()
                            }, label: {
                                Text("Delete")
                                    .foregroundColor(.black)
                                    .padding(.leading, 50)
                                    .opacity(0.5)
                                    .font(.title2)
                            })
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct KeypadButton: View {
    @Binding var flag: Bool
    @Binding var showSafetyFront: Bool
    @Binding var input: [String]
    let name: String
    let subtext: String
    
    var body: some View {
        Button(action: {
            input.append(name)
            self.flag = passwordValidation(inputPassword: input)
            self.showSafetyFront = safetyPasswordValidation(inputPassword: input)
        }, label: {
            VStack(alignment: .center) {
                Text(name)
                    .font(.title)
                if subtext != "" {
                    Text(subtext)
                }
            }
            .frame(width:90, height:90)
            .background(Color.black.opacity(0.1))
            .foregroundColor(Color.black)
            .clipShape(Circle())
            .multilineTextAlignment(.center)
        })
    }
}

func passwordValidation(inputPassword: [String]) -> Bool {
    if inputPassword.count == 4 && inputPassword == correctPassword {
        return true
    } else {
        return false
    }
}

func safetyPasswordValidation(inputPassword: [String]) -> Bool {
    if inputPassword.count == 4 && inputPassword == safeExitPassword {
        return true
    } else {
        return false
    }
}

struct Password_Preview: PreviewProvider {
    static var previews: some View {
        PasswordView(input: [])
    }
}

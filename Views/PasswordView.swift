//
//  PasswordView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct PasswordView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Password_Background")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 3.0)
                PasswordLockImage()
                PasswordTitle()
                PasswordKeyPad()
                PasswordBottomText()
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct PasswordLockImage: View {
    var body: some View {
        Image("Lock")
            .frame(width: 42, height: 54)
            .padding(.bottom, 650)
            .opacity(0.6)
    }
}

struct PasswordVisualCircles: View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color("DarkPurple"))
                .frame(width: 18, height: 18)
            Circle()
                .fill(Color("DarkPurple"))
                .frame(width: 18, height: 18)
            Circle()
                .fill(Color("DarkPurple"))
                .frame(width: 18, height: 18)
            Circle()
                .stroke(Color("DarkPurple"))
                .frame(width: 18, height: 18)
        }
    }
}

struct PasswordTitle: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Enter Passcode")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //PasswordVisualCircles()
        }
        .padding(.bottom, 430)
    }
}

struct PasswordBottomText: View {
    var body: some View {
        HStack {
            Text("Emergency")
                .foregroundColor(.black)
                .padding(.trailing, 50)
                .opacity(0.5)
                .font(.title2)
            Text("Delete")
                .foregroundColor(.black)
                .padding(.leading, 50)
                .opacity(0.5)
                .font(.title2)
        }.padding(.top, 750)
        
    }
}

func passwordValidation(inputPassword: [String]) -> Bool {
    let correctPassword = ["", "2", "5", "6", "9"]
    if inputPassword.count == 5 && inputPassword == correctPassword {
        return true
    } else {
        return false
    }
}

struct PasswordKeyPad: View {
    @State private var input = [""]
    @State private var flag = false
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: SafetyPlanScreen(), isActive: $flag) { EmptyView() }
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                    
                Button(action: {
                    self.input.append("1")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("1")
                            .font(.title)
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    self.input.append("2")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("2")
                            .font(.title)
                        Text("A B C")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                }).padding(.horizontal, 20)
                
                Button(action: {
                    self.input.append("3")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("3")
                            .font(.title)
                        Text("D E F")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    self.input.append("4")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("4")
                            .font(.title)
                        Text("G H I")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    self.input.append("5")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("5")
                            .font(.title)
                        Text("J K L")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                }).padding(.horizontal, 20)
                
                Button(action: {
                    self.input.append("6")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("6")
                            .font(.title)
                        Text("M N O")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    self.input.append("7")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("7")
                            .font(.title)
                        Text("P Q R S")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
                Button(action: {
                    self.input.append("8")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("8")
                            .font(.title)
                        Text("T U V")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                }).padding(.horizontal, 20)
                
                Button(action: {
                    self.input.append("9")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("9")
                            .font(.title)
                        Text("W X Y Z")
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                        
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    self.input.append("0")
                    self.flag = passwordValidation(inputPassword: self.input)
                }, label: {
                    VStack(alignment: .center) {
                        Text("0")
                            .font(.title)
                    }
                        .frame(width:90, height:90)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
        }
        .padding(.top, 200)
    }
}

struct PasswordView_Preview: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}

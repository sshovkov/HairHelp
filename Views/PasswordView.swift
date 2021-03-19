//
//  PasswordView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct PasswordView: View {
    var body: some View {
        ZStack{
            Image("Password_Background")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 3.0)
            PasswordTitle()
            PasswordKeyPad()
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
            Text(". . . .")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        .padding(.bottom, 450)
       
    }
}

struct PasswordKeyPad: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("1")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("2\nA B C")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("3\nD E F")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("4\nG H I")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("5\nJ K L")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("6\nM N O")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("7\nP Q R S")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("8\nT U V")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                })
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("9\nW X Y Z")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .multilineTextAlignment(.center)
                })
            }.padding(.vertical, 10)
            HStack {
                Button(action: {
                    print("pressed")
                }, label: {
                    Text("0")
                        .frame(width:90, height:90)
                        .background(Color.black)
                        .opacity(0.1)
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

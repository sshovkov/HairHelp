//
//  ChatView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        ZStack {
            VStack {
                ChatTitle()
                    .offset(y: 30)
                ChatBackground()
                    .offset(y: 30)
                ChatSendMessage()
                    .offset(y: 10)
            }
            ChatCover()
        }
    }
}

struct ChatBackground: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Lavender").opacity(0.40))
                .frame(width: 415, height: 680)
            ChatBubbles()
        }
    }
}

struct ChatCover: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Currently Out\nof Scope")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            })
            .frame(width: 415, height: 950, alignment: .center)
            .background(Color.black.opacity(0.4))
    }
}

struct ChatSendMessage: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack {
            Text("Type your message here...")
                .foregroundColor(colorScheme == .dark ? Color.white.opacity(0.7) : Color.black.opacity(0.5))
                .padding(.trailing, 30)
            Image(colorScheme == .dark ? "LocationIcon_dark" : "LocationIcon")
                .frame(width: 29, height: 26)
            Image(colorScheme == .dark ? "AttachIcon_dark" : "AttachIcon")
                .frame(width: 15, height: 30)
                .padding(.trailing, 10)
            Image(colorScheme == .dark ? "SendIcon_dark" : "SendIcon")
                .frame(width: 20, height: 26)
                .padding(.leading, 13)
        }
        .frame(width:414, height: 102)
    }
}

struct ChatTitle: View {
    var body: some View {
        HStack {
            VStack {
                Text("John Doe")
                    .font(.title)
                    .offset(y: 15)
                HStack {
                    Text("Online now")
                        .font(.footnote)
                        .opacity(0.5)
                    Circle()
                        .fill(Color("Online"))
                        .frame(width: 6, height: 6)
                }
            }
            .offset(x:30)
            Image("ExitChatIcon")
                .frame(width: 40, height: 40)
                .offset(x: 100)
        }
    }
}

struct ChatBubbles: View {
    var body: some View {
        VStack {
            ChatBubbleFromApp(timestamp: "2:28 PM")
                .padding(.vertical, 40)
            ChatBubbleFromUser(timestamp: "2:30 PM")
                .padding(.bottom, 40)
            ChatBubbleFromApp(timestamp: "2:30 PM")
                .padding(.bottom, 40)
            ChatBubbleFromUser(timestamp: "2:34 PM")
                .padding(.bottom, 150)
        }
        .frame(width: 415, height: 600)
    }
}

struct ChatBubbleFromApp: View {
    let timestamp: String
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(20, corners: [.bottomRight, .topLeft, .bottomLeft])
                    .frame(width: 292, height: 58)
                Circle()
                    .fill(Color("Mauve"))
                    .frame(width: 49, height: 49)
                    .offset(x:10, y:-25)
            }
            Text(timestamp)
                .opacity(0.3)
                .font(.subheadline)
        }
    }
}

struct ChatBubbleFromUser: View {
    let timestamp: String
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(Color("MediumPurple"))
                    .frame(width: 49, height: 49)
                    .offset(x:-10, y:-25)
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(20, corners: [.bottomRight, .topRight, .bottomLeft])
                    .frame(width: 292, height: 58)
            }
            Text(timestamp)
                .opacity(0.3)
                .font(.subheadline)
        }
    }
}

struct ChatView_Preview: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

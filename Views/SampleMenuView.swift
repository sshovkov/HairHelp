//
//  ContentView.swift
//  DropDown_SwiftUI
//
//  Created by Immature Inc on 02/03/2020.
//  Copyright © 2020 AnthonyDesignCode. All rights reserved.
//

import SwiftUI

/**
 DropDown() receives name and options as parameters.
 "name" is the title of the drop down
 "options" is a list of DropDownOptions objects that has the main text and the subtext for each bullet in the drop down.
 */
struct DropDown: View {
    let name: String
//    let options = [
//        DropDownOptions(key: "Identify your partner's use and level of force", val: ""),
//        DropDownOptions(key: "Know where the nearest public phone is located", val: ""),
//        DropDownOptions(key: "Identify safe areas in your residence", val: "Places with pathways to exits and away from weapons, try to move to those areas before arguments escalate."),
//    ]
    let options: [DropDownOptions]
    
    @State var expand = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                HStack {
                    Text(name)
                        .foregroundColor(.black)
                    Spacer()
                    Image(expand ? "DownChevron" : "RightChevron")
                        .frame(width: 11, height: 18)
                        .foregroundColor(.black)
                }.onTapGesture {
                    self.expand.toggle()
                }
                .padding(30)
                .frame(width: 353, height: 54)
                .background(Color("LightGray"))
                .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 20, content: {
                    if self.expand {
                        ForEach(options, id: \.key) { option in
                            InnerButton(text: option.key, subtext: option.val)
                        }
                    }
                })
            }
        }
    }
}

struct InnerButton: View {
    @State private var checked = false
    let text: String
    let subtext: String
    
    var body: some View {
        Button(action: {
            self.checked.toggle()
        }) {
            HStack (alignment: .top) {
                Image(checked ? "Checked" : "Unchecked")
                    .renderingMode(.original)
                    .frame(width: 33, height: 33)
                VStack (alignment: .leading, spacing: nil, content: {
                    Text(text)
                        .multilineTextAlignment(.leading)
                        .padding(3)
                    if subtext != "" {
                        Text(subtext)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                            .padding(3)
                    }
                }).padding(.bottom, 10)
            }.padding(.horizontal)
            
        }.foregroundColor(.black)
    }
}


//struct DropDown_Previews: PreviewProvider {
//    static var previews: some View {
//        DropDown(name: "Physical Safety")
//    }
//}

//
//  MoreInfoView.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct MoreInfoView: View {
    
    var body: some View {
        VStack {
            MoreInfoText()
            Spacer()
            SafetyQuickExit()
                .offset(y: 35)
        }
    }
}

struct MoreInfoText: View {
    var body: some View {
        Text("Use this app to create a safety plan and access resources that are provided behind a safety front.\n\nEnsure that you select a password that is random, hard to guess, and different from your phone’s password.\n\nIf someone is watching you enter your password,  enter “1111” to be taken to a safety front.\n\nUse any of the quick exits to prompty return to the landing safety front. ")
            .font(.title3)
            .frame(width:344)
            .padding(.top, 20)
    }
}

struct MoreInfoView_Preview: PreviewProvider {
    static var previews: some View {
        MoreInfoView()
    }
}

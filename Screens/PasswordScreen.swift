//
//  PasswordScreen.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//

import SwiftUI

struct PasswordScreen: View {
    @State private var password = "0000"
    
    var body: some View {
        PasswordView()
    }
}

struct PasswordScreen_Preview: PreviewProvider {
    static var previews: some View {
        PasswordScreen()
    }
}

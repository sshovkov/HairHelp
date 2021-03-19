//
//  PasswordScreen.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//
import Foundation
import SwiftUI

struct PasswordScreen: View {
    @State var password = ["2", "5", "6", "9"]
    
    var body: some View {
        PasswordView()
    }
}

struct PasswordScreen_Preview: PreviewProvider {
    static var previews: some View {
        PasswordScreen()
    }
}

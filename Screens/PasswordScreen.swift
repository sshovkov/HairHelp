//
//  PasswordScreen.swift
//  acesdv
//
//  Created by Shovkovy on 3/19/21.
//
import Foundation
import SwiftUI

var correctPassword = ["2", "5", "6", "9"]
var safeExitPassword = ["1", "1", "1", "1"]

struct PasswordScreen: View {
    var body: some View {
        PasswordView()
    }
}

struct PasswordScreen_Preview: PreviewProvider {
    static var previews: some View {
        PasswordScreen()
    }
}

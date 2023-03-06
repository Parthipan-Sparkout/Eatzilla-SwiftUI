//
//  LoginView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 02/03/23.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var mobileNumber: String = ""
    @State var moveToPassword = false
    @State var showAlert: Bool = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: EnterPasswordView().navigationBarHidden(true), isActive: $moveToPassword) {
                    EmptyView()
                }
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                }
                .padding([.leading, .trailing, .top])
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Guest User")
                        .foregroundColor(Color.black)
                }
                .padding([.leading, .trailing, .top])
            }
            Divider()
                .foregroundColor(Color.gray)
                .padding(.bottom, 50)
            Image("eatzilla_logo")
                .resizable()
                .frame(width: 120, height: 120)
                .padding(.bottom, 20)
            Text("Enter your Phone number")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .font(.system(size: 20, weight: .bold))
            TextField("Enter your Phone Number", text: $mobileNumber)
                .padding(12)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                .padding([.leading, .trailing])
            Spacer()
            Button(action: {
                if mobileNumber.isEmpty {
                    Helper.alertMessage(title: "Alert!", message: "Mobile number must not empty")
                } else {
                    moveToPassword = true
                }
            }) {
                Text("Next")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: UIScreen.main.bounds.width, height: 50)
                    .foregroundColor(Color.white)
            }
            .background(Color.green)
        }
        
    }
}

//
//  EnterPasswordView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 02/03/23.
//

import Foundation
import SwiftUI

struct EnterPasswordView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var mobileNumber: String = ""
    var body: some View {
        VStack {
            HStack {
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
            Text("Welcome, Enter your password to continue")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .font(.system(size: 20, weight: .bold))
            TextField("Enter your password", text: $mobileNumber)
                .padding(12)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                .padding([.leading, .trailing])
            Spacer()
            Button(action: {}) {
                Text("Next")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.white)
            }
            .frame(width: UIScreen.main.bounds.width, height: 50)
            .background(Color.green)
        }
        
    }
}

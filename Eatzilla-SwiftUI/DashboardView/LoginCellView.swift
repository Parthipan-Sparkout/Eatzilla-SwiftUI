//
//  LoginCellView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 14/02/23.
//

import SwiftUI

struct LoginCellView: View {
    @State var moveToLogin = false
    var body: some View {
        NavigationLink(destination: LoginView().navigationBarHidden(true), isActive: $moveToLogin) {
           EmptyView()
        }
        
        Button(action: {
            moveToLogin = true
        }) {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .foregroundColor(Color.gray)
                    .frame(width: 40.0, height: 40.0)
                    .padding(20)
                Text("Login or create an account to start ordering food with us")
                    .foregroundColor(Apptheme.themeColor())
                    .lineLimit(2)
                    .padding(.trailing, 10)
                    .multilineTextAlignment(.leading)
            }
        }

        .padding(2)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1)
        )
    }
}

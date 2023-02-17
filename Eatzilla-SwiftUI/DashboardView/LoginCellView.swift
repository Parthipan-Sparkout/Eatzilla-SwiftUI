//
//  LoginCellView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 14/02/23.
//

import SwiftUI

struct LoginCellView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 40.0, height: 40.0)
                .padding(20)
            Text("Login or create an account to start ordering food with us")
                .foregroundColor(Apptheme.themeColor())
                .lineLimit(2)
                .padding(.trailing, 10)
                .multilineTextAlignment(.leading)
        }
        .padding(2)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1)
        )
    }
}

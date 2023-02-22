//
//  DashboardView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 14/02/23.
//

import SwiftUI
import Foundation

struct DashboardView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigatorView()
                        .padding(.bottom, 20)
                    LoginCellView()
                    Text("Hungry? Your food just one click away.")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .padding()
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: SearchViewController()
                        .navigationTitle("")
                        .navigationBarHidden(true)) {
                        Text("View All Shops")
                            .font(.system(size: 18, weight: .semibold, design: .default))
                            .frame(width: UIScreen.main.bounds.width - 30, height: 40)
                            .background(Apptheme.themeColor())
                            .cornerRadius(8)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    CuisinesView()
                    BannersView()
                    PopularBrandsView()
                    Spacer()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct NavigatorView: View {
    var body: some View {
        HStack {
            Image("menu")
                .resizable()
                .frame(width: 15, height: 15)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            VStack {
                Text("Delivering to")
                    .foregroundColor(Apptheme.themeColor())
                    .font(.system(size: 18))
                Text("Saravanampatti, Coimbatore, India")
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .font(.system(size: 16))
            }
            Spacer()
            NavigationLink(destination: SearchViewController().navigationTitle("")) {
                Image("search")
                    .resizable()
                    .foregroundColor(Color.black)
                    .frame(width: 20, height: 20)
                    .padding(.leading, 15)
            }
            
                
            Image("icon_cart")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.leading, 12)
                .padding(.trailing, 15)
        }
    }
}

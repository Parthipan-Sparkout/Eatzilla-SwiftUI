//
//  SearchViewController.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 17/02/23.
//

import SwiftUI

struct SearchViewController: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var searchText = ""
    @State var restaurants: [NearByRestaurant] = []
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    .padding([.leading, .trailing, .top])
                    Spacer()
                }
                .searchable(text: $searchText)
            } else {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    .padding([.leading, .trailing, .top])
                    Spacer()
                }
            }
            HStack {
                Image("eatzilla_logo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(6)
                VStack(spacing: 8) {
                    Text("Greenleaf Restaurant")
                        .font(.system(.title2))
                        .multilineTextAlignment(.leading)
                    Text("Indian Food")
                        .foregroundColor(Color.gray)
                        .font(.system(.caption))
                        .multilineTextAlignment(.leading)
                    Text("Delivery Time: 20-30 mins")
                        .foregroundColor(Apptheme.themeColor())
                        .multilineTextAlignment(.leading)
                    
                }
                .frame(height: 90)
                Spacer()
            }
            .padding(8)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            .padding(8)
            Spacer()
        }
        .onAppear {
            getNearByRestaurants()
        }
        .navigationBarHidden(true)
        .navigationTitle("")
    }
    
    func getNearByRestaurants() {
            APIConnection.request(url: Constants.getNearByRestaurants, type: NearByRestaurantsResponse.self, completion: { result in
                switch result {
                case .success(let value):
                    print(value)
                    restaurants = value.restaurants ?? []
                case .failure(let error):
                    print(error)
                }
            })
    }
}

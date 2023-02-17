//
//  BannersView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation
import SwiftUI

struct BannersView: View {
    @State var bannersList: [BannersData] = []
    @State var imageUrl: String = ""
    var body: some View {
        VStack {
            Text("Our Offers and Promotions")
                .font(.system(size: 18, weight: .semibold))
                .padding()
                .multilineTextAlignment(.center)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(bannersList, id: \.id) { banner in
                        BannerViewXib(baseUrl: imageUrl, brand: banner)
                    }
                }
            }
            .padding([.leading, .trailing])
            .frame(height: 150)
            Spacer()
        }
        .onAppear {
            getBanners()
        }
    }
    
    func getBanners() {
        APIConnection.request(url: Constants.getBanners, type: BannersResponse.self, completion: { result in
            switch result {
            case .success(let value):
                print(value)
                imageUrl = value.baseURL ?? ""
                bannersList = value.data ?? []
            case .failure(let error):
                print(error)
            }
        })
    }
}

struct BannerViewXib: View {
    var baseUrl: String
    var brand: BannersData
    @State var initialImage = UIImage()
    var body: some View {
        Image(uiImage: initialImage)
            .resizable()
            .frame(width: UIScreen.main.bounds.width - 30, height: 140)
            .aspectRatio(contentMode: .fill)
            .cornerRadius(12)
            .onAppear {
                let imageUrl = baseUrl + (self.brand.image1 ?? "")
                print(imageUrl)
                guard let url = URL(string: imageUrl) else { return }
                URLSession.shared.dataTask(with: url) { (data, response, error) in
                    guard let data = data else { return }
                    guard let image = UIImage(data: data) else { return }
                    
                        self.initialImage = image
                    
                }.resume()
            }
    }
}

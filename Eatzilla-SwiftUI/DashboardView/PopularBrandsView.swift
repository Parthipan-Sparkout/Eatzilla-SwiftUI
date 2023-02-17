//
//  PopularBrandsView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 15/02/23.
//

import SwiftUI

struct PopularBrandsView: View {
    @State var popularBrands: [PopularBrands] = []
    @State var imageUrl: String = ""
    var body: some View {
        VStack {
            Text("Popular Brands")
                .font(.system(size: 18, weight: .semibold))
                .padding()
                .multilineTextAlignment(.center)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(popularBrands, id: \.id) { brands in
                        PopularBrandXib(baseUrl: imageUrl, brand: brands)
                    }
                }
            }
            .padding([.leading, .trailing])
            .frame(height: 100)
            Spacer()
        }
        .onAppear {
            getPopularBrands()
        }
    }
    
    func getPopularBrands() {
        APIConnection.request(url: Constants.getPopularBrands, type: PopularBrandsList.self, completion: { result in
            switch result {
            case .success(let value):
                print(value)
                imageUrl = value.baseURL ?? ""
                popularBrands = value.data ?? []
            case .failure(let error):
                print(error)
            }
        })
    }
}

struct PopularBrandXib: View {
    var baseUrl: String
    var brand: PopularBrands
    @State var initialImage = UIImage()
    var body: some View {
        Image(uiImage: initialImage)
            .resizable()
            .frame(width: 90, height: 90)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1)
            )
            .onAppear {
                let imageUrl = baseUrl + (self.brand.image ?? "")
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

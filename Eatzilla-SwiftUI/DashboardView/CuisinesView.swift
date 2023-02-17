//
//  CuisinesView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 15/02/23.
//

import SwiftUI

struct CuisinesView: View {
   @State var cuisinesList: [Cuisines] = []
   @State var imageBaseUrl: String = ""
    var body: some View {
        VStack {
            Text("Choose your Favourite Cuisine")
                .font(.system(size: 18, weight: .semibold))
                .padding()
                .multilineTextAlignment(.center)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(cuisinesList, id: \.id) { cuisine in
                        CuisineXib(cusine: cuisine, baseUrl: imageBaseUrl)
                    }
                }
                
            }
            .padding([.leading, .trailing])
            .frame(height: 130)
        }
        .onAppear {
                getCuisines()
        }
    }
    
    func getCuisines() {
        APIConnection.request(url: Constants.getCuisines, type: CuisinesList.self, completion: { result in
            switch result {
            case .success(let value):
                print(value)
                imageBaseUrl = value.baseURL ?? ""
                cuisinesList = value.data ?? []
            case .failure(let error):
                print(error)
            }
        })
    }
}


struct CuisineXib: View {
    var cusine: Cuisines
    var baseUrl: String
    @State var initialImage = UIImage()
    var body: some View {
        VStack {
            Image(uiImage: initialImage)
                .resizable()
                .frame(width: 120, height: 100)
                .cornerRadius(12)
                .aspectRatio(contentMode: .fill)
                .onAppear {
                   let imageUrl = baseUrl + (self.cusine.cuisineImage ?? "")
                    guard let url = URL(string: imageUrl) else { return }
                    URLSession.shared.dataTask(with: url) { (data, response, error) in
                        guard let data = data else { return }
                        guard let image = UIImage(data: data) else { return }
                        
                        DispatchQueue.main.async {
                            self.initialImage = image
                        }
                        
                    }.resume()
                }
            Text(cusine.name ?? "")
                .multilineTextAlignment(.center)
                .font(.body)
        }
    }
}

//
//  Constants.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation

class Constants {
    static var BaseUrl = "https://api-admin.eatzilla.info/api/"
    static var getCuisines = BaseUrl + "get_cuisines"
    static var getBanners = BaseUrl + "get_banners"
    static var getNearByRestaurants = BaseUrl + "get_nearby_restaurant?lng=76.9951211&lat=11.0516107"
    static var getPopularBrands = BaseUrl + "get_popular_brands?lat=11.051610936390071&lng=76.99512116611004"
}

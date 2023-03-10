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
    static var sendOtp = BaseUrl + "send_otp"
    static var login = BaseUrl + "login"
    // "device_type": "ios", "auth_key": "90/rjhUD0X7SM9iRha0zdw==", "phone": "917904351903", "is_forgot_password": "0"
    
    // "device_type": "ios", "login_type": 0, "password": "12345678", "device_token": e5a6t85P7k5UoIqyCkXqwq:APA91bHwbhBoud91v25SCBh2FoZrDTzXx7M9hH5IxFQwvYyDCEQBgjOeJfQplHILUi_GmlxfcVoWdUsnJrcqvCoE1aCEYO9hXi3q5Q_lIg59H4U5gt8UNAPwb6gaglv3tqPazF3z0GnK, "ios_version": 3.2, "phone": "917904351903"
    static var getNearByRestaurants = BaseUrl + "get_nearby_restaurant?lng=76.9951211&lat=11.0516107"
    static var getPopularBrands = BaseUrl + "get_popular_brands?lat=11.051610936390071&lng=76.99512116611004"
}

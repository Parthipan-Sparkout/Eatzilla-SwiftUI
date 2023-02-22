//
//  NearByRestaurantsModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 17/02/23.
//

import Foundation

struct NearByRestaurantsResponse: Codable {
    let status: Bool?
    let restaurants: [NearByRestaurant]?
}

// MARK: - Restaurant
struct NearByRestaurant: Codable {
    let id: Int?
    let name: String?
    let nameAr: String?
    let nameKur: String?
    let image: String?
    let discount: String?
    let rating: Double?
    let isOpen, isBusy: Int?
    let cuisines: [Cuisine]?
    let travelTime: String?
    let price: String?
    let discountType, targetAmount: String?
    let offerAmount: String?
    let isFoodOfferExist, isFavourite: Int?
    let deliveryType: String?
    let address: String?
    let minOrderValue, restaurantDeliveryCharge, restaurantDeliveryChargeIos: Int?
    let restaurantOpenTime, restaurantCloseTime: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case nameAr = "name_ar"
        case nameKur = "name_kur"
        case image, discount, rating
        case isOpen = "is_open"
        case isBusy = "is_busy"
        case cuisines
        case travelTime = "travel_time"
        case price
        case discountType = "discount_type"
        case targetAmount = "target_amount"
        case offerAmount = "offer_amount"
        case isFoodOfferExist = "is_food_offer_exist"
        case isFavourite = "is_favourite"
        case deliveryType = "delivery_type"
        case address
        case minOrderValue = "min_order_value"
        case restaurantDeliveryCharge = "restaurant_delivery_charge"
        case restaurantDeliveryChargeIos = "restaurant_delivery_charge_ios"
        case restaurantOpenTime = "restaurant_open_time"
        case restaurantCloseTime = "restaurant_close_time"
    }
}

// MARK: - Cuisine
struct Cuisine: Codable {
    let name, nameAr, nameKur: String?

    enum CodingKeys: String, CodingKey {
        case name
        case nameAr = "name_ar"
        case nameKur = "name_kur"
    }
}

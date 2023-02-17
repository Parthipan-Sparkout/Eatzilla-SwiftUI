//
//  BannersModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation

struct BannersResponse: Codable {
    let status: Bool?
    let data: [BannersData]?
    let baseURL: String?

    enum CodingKeys: String, CodingKey {
        case status, data
        case baseURL = "base_url"
    }
}

// MARK: - Datum
struct BannersData: Codable {
    let id, restaurantID: Int?
    let image, image1: String?
    let title, description, position: String?
    let status, isSuffle: Int?
    let createdAt, updatedAt: String?
    let startdate, enddate: Int?
    let restaurantName: String?
    let isMainBranch, isOpen: Int?
    let restaurants: Restaurants?

    enum CodingKeys: String, CodingKey {
        case id
        case restaurantID = "restaurant_id"
        case image, image1, title, description, position, status
        case isSuffle = "is_suffle"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case startdate, enddate
        case restaurantName = "restaurant_name"
        case isMainBranch = "is_main_branch"
        case isOpen = "is_open"
        case restaurants
    }
}

// MARK: - Restaurants
struct Restaurants: Codable {
    let id: Int?
    let restaurantName, restaurantNameAr: String?
    let restaurantNameKur: String?
    let image, email, phone: String?
    let phone2: String?
    let authToken, password, orgPassword, discount: String?
    let discountType, targetAmount, offerAmount: String?
    let totalEarnings: Int?
    let pendingPayout: Double?
    let adminCommision, adminCommisionWithoutDelivery, restaurantDeliveryCharge: String?
    let minDistDeliveryPrice, extraFeeDeliveryamount: Int?
    let driverCommision: String?
    let driverBasePrice, minDistBasePrice, extraFeeAmount: Int?
    let shopDescription, shopDescriptionAr: String?
    let shopDescriptionKur: String?
    let rating, isOpen: Int?
    let estimatedDeliveryTime: String?
    let packagingCharge: Int?
    let address, city: String?
    let area: String?
    let lat, lng: Double?
    let openingTime, closingTime, weekendOpeningTime, weekendClosingTime: String?
    let type: String?
    let status, isBusy, tax: Int?
    let fssaiLicense: String?
    let isLoggedin: Int?
    let deliveryType: String?
    let maxDiningCount: Int?
    let deviceType, deviceToken: String?
    let isApproved: Int?
    let resturantWebsite: String?
    let minOrderValue: Int?
    let createdAt, updatedAt: String?
    let deliverytype: Int?
    let role: String?
    let parent: Int?
    let specialcharge: String?
    let sort, deliveryaccess, isNewlyAdded: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case restaurantName = "restaurant_name"
        case restaurantNameAr = "restaurant_name_ar"
        case restaurantNameKur = "restaurant_name_kur"
        case image, email, phone, phone2, authToken, password
        case orgPassword = "org_password"
        case discount
        case discountType = "discount_type"
        case targetAmount = "target_amount"
        case offerAmount = "offer_amount"
        case totalEarnings = "total_earnings"
        case pendingPayout = "pending_payout"
        case adminCommision = "admin_commision"
        case adminCommisionWithoutDelivery = "admin_commision_without_delivery"
        case restaurantDeliveryCharge = "restaurant_delivery_charge"
        case minDistDeliveryPrice = "min_dist_delivery_price"
        case extraFeeDeliveryamount = "extra_fee_deliveryamount"
        case driverCommision = "driver_commision"
        case driverBasePrice = "driver_base_price"
        case minDistBasePrice = "min_dist_base_price"
        case extraFeeAmount = "extra_fee_amount"
        case shopDescription = "shop_description"
        case shopDescriptionAr = "shop_description_ar"
        case shopDescriptionKur = "shop_description_kur"
        case rating
        case isOpen = "is_open"
        case estimatedDeliveryTime = "estimated_delivery_time"
        case packagingCharge = "packaging_charge"
        case address, city, area, lat, lng
        case openingTime = "opening_time"
        case closingTime = "closing_time"
        case weekendOpeningTime = "weekend_opening_time"
        case weekendClosingTime = "weekend_closing_time"
        case type, status
        case isBusy = "is_busy"
        case tax
        case fssaiLicense = "fssai_license"
        case isLoggedin = "is_loggedin"
        case deliveryType = "delivery_type"
        case maxDiningCount = "max_dining_count"
        case deviceType = "device_type"
        case deviceToken = "device_token"
        case isApproved = "is_approved"
        case resturantWebsite = "resturant_website"
        case minOrderValue = "min_order_value"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deliverytype, role, parent, specialcharge, sort, deliveryaccess
        case isNewlyAdded = "is_newly_added"
    }
}

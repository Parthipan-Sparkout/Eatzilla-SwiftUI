//
//  PopularBrandsModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation

// MARK: - Welcome
struct PopularBrandsList: Codable {
    let status: Bool?
    let data: [PopularBrands]?
    let baseURL: String?

    enum CodingKeys: String, CodingKey {
        case status, data
        case baseURL = "base_url"
    }
}

// MARK: - Datum
struct PopularBrands: Codable {
    let id: Int?
    let name, image: String?
    let status: Int?
    let createdAt, updatedAt: String?
    let restaurantID: Int?
    let distance, rating: Double?
    let isOpen, isMainBranch: Int?

    enum CodingKeys: String, CodingKey {
        case id, name, image, status
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case restaurantID = "restaurant_id"
        case distance, rating
        case isOpen = "is_open"
        case isMainBranch = "is_main_branch"
    }
}

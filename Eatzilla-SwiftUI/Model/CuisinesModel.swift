//
//  CuisinesModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation

struct CuisinesList: Codable {
    let status: Bool?
    let data: [Cuisines]?
    let baseURL: String?

    enum CodingKeys: String, CodingKey {
        case status, data
        case baseURL = "base_url"
    }
}

// MARK: - Datum
struct Cuisines: Codable {
    let id: Int?
    let name, nameAr: String?
    let nameKur, cuisineImage: String?
    let status, isDisplayed: Int?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case nameAr = "name_ar"
        case nameKur = "name_kur"
        case cuisineImage = "cuisine_image"
        case status
        case isDisplayed = "is_displayed"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

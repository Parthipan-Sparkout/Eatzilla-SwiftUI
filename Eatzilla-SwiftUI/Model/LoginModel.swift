//
//  LoginModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 09/03/23.
//

import Foundation

struct LoginModel: Codable {
    let status: Bool?
    let message: String?
    let otp, isNewUser: Int?

    enum CodingKeys: String, CodingKey {
        case status, message, otp
        case isNewUser = "is_new_user"
    }
}

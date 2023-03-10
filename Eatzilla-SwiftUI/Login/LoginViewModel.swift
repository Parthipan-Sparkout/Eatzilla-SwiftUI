//
//  LoginViewModel.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 09/03/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var otp: String?
    @Published var isNewUser: Int = 0
    func sendOtpApi(paramaters: [String : Any], completion: @escaping(LoginModel?)-> Void ) {
        APIConnection.request(url: Constants.sendOtp, method: .post, parameters: paramaters, type: LoginModel.self) { result in
            switch result {
            case .success(let response):
                self.isNewUser = response.isNewUser ?? 0
                completion(response)
            case .failure(let error):
                print(error)
                completion(nil)
            }
        }
    }
}

//
//  NetworkClass.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 16/02/23.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}
class APIConnection {
    
    class func request<T: Codable>(url: String,
                                   method: HTTPMethod = .get,
                                   parameters: [String: Any]? = nil,
                                   type: T.Type) async throws -> T {
        
        guard let url1 = URL(string: url) else {
            print("Invalid url...")
            return
        }
        
        
        print("request url ---->", url1)
        print("request params ---->", parameters)
        var request = URLRequest(url: url1)
        
        if parameters != nil {
            let finalData = try? JSONSerialization.data(withJSONObject: parameters)
            request.httpBody = finalData
        }
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = method.rawValue
        
        return try await withCheckedThrowingContinuation { continuation in
            URLSession.shared.dataTask(with: request) { data1, response, error in
                do{
                    let response = try JSONDecoder().decode(T.self, from: data1!)
                    print(response)
                    continuation.resume(with: .success(response))
                    
                } catch (let error) {
                    print(error)
                    continuation.resume(with: .failure(error))
                }
            }.resume()
            
        }
    }
}

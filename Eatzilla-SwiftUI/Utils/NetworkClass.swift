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
                                   type: T.Type,
                                   completion: @escaping (Swift.Result<T, Error>) -> Void)  {
        
        guard let url = URL(string: url) else {
            print("Invalid url...")
            return
        }
        
        
        print("request url ---->", url)
        print("request params ---->", parameters)
        var request = URLRequest(url: url)
        
        if parameters != nil {
            let finalData = try? JSONSerialization.data(withJSONObject: parameters)
            request.httpBody = finalData
        }
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = method.rawValue
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            do{
                let response = try JSONDecoder().decode(T.self, from: data!)
                print(response)
                completion(.success(response))
                
            } catch (let error) {
                print(error)
                completion(.failure(error))
            }
        }.resume()
        
    }
}

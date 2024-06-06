//
//  NetworkService.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import Foundation
class Network {
    
    static func fetchDataFromJson(location:String , completion: @escaping (Response?) -> Void) {
      // print("'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''" , location)
        let url = URL(string: "https://api.weatherapi.com/v1/forecast.json?key=5ff53f0cf728466b9c8140701241705&q=\(location)&days=3")!
        let request = URLRequest(url: url)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) { data, response, error in
            do {
                let result = try JSONDecoder().decode(Response.self, from: data!)
                completion(result)
            } catch {
                print(error)
                completion(nil)
            }
        }
        task.resume()
    }
}
    

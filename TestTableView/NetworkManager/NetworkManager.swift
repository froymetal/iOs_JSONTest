//
//  NetworkManager.swift
//  TestTableView
//
//  Created by Froy on 7/7/21.
//

import UIKit
import Foundation

/*

class NetworkManager {
    static let shared = NetworkManager()
     struct Constants {

        static let assetEndpoint = "https://s3.amazonaws.com/br-codingexams/restaurants.json"
    }
     private init() {}
    public func getAllLunchData(
        completion: @escaping (Result) -> Void
    ) {

        guard let url = URL(string: Constants.assetEndpoint) else {
        return
    }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let Lunch = try JSONDecoder().decode([Todo].self, from: data)
                completion((Lunch))
                print("Data ", Lunch)
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
 }

*/


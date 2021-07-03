//
//  APIServices.swift
//  MVVMDemo
//
//  Created by Amin  on 6/30/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


class APIServices: NSObject {
    
    private var url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    
    func getUsersData(completionHandler: @escaping (Result<[UsersModel]?, NSError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let users = try! jsonDecoder.decode([UsersModel].self, from: data)
                completionHandler(.success(users))
            }
        }.resume()
    }
    
}

//
//  ProductsAPIClient.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/8/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation

struct ProductsAPIClient{
    
   // access the data
    static func fetchProducts( completion: @escaping (Result <[Products], AppError>) ->  () ) {
        
        let productsEndPointURLString =  "http://5e14de2dbce1d10014baee92.mockapi.io/skinTea"
        
        
        guard let url = URL(string: productsEndPointURLString) else {
            completion(.failure(.badURL(productsEndPointURLString)))
            return
        }
        
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request, completion: { (result) in
            
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    let product = try JSONDecoder().decode([Products].self, from: data)
                        completion(.success(product))
                    
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
            
        })
        
        
    }
    
    
    
}

//
//  GetCountryDetails.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

class GetCountryDetails {
    
    func get(name: String, completion: @escaping (Country?, Error?)->()) {
        
        guard let url = AppURL.shared.getCountryDetails(name: name)
            else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data
                else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let countryList = try decoder.decode([Country].self, from: data)
                completion(countryList.first, nil)
            } catch {
                print("error")
                completion(nil, error)
            }
        }
        
        task.resume()
    }
}

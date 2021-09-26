//
//  GetCountryDetails.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

protocol GetCountryDetailsServiceProtocol {
    
    func get(name: String, completion: @escaping (Country?, Error?)->())
}

class GetCountryDetailsAPI: GetCountryDetailsServiceProtocol {
    
    func get(name: String, completion: @escaping (Country?, Error?)->()) {
        
        let componentsModel = AppURL.shared.getCountryDetailsURLComponents(name: name)
        
        var components = URLComponents(components: componentsModel)
        components.setQueryItems(with: ["access_key":"dbe96513a151b8bce53aa2c1f4d04d09"])
        

        guard let url = components.url
            else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = componentsModel.httpMethod.rawValue
        
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

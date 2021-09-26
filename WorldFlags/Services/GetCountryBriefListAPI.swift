//
//  GetCountryBriefListAPI.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

protocol GetCountryBriefListServiceProtocol {
    
     func get(completion: @escaping ([CountryBrief]?, Error?)->())
}

class GetCountryBriefListAPI: GetCountryBriefListServiceProtocol {
    
    func get(completion: @escaping ([CountryBrief]?, Error?)->()) {
        
        let componentsModel = AppURL.shared.getCountryListURLComponents()
        
        var components = URLComponents(components: componentsModel)
        components.setQueryItems(with: ["access_key":"dbe96513a151b8bce53aa2c1f4d04d09"])
        
        let session = URLSession.shared
        guard let url = components.url
            else{ return }
        
        var request = URLRequest(url: url)
        request.httpMethod = componentsModel.httpMethod.rawValue

        let task = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data
                else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let countryList = try decoder.decode([CountryBrief].self, from: data)
                completion(countryList, nil)
            } catch {
                print("error")
                completion(nil, error)
            }
        }
        
        task.resume()
    }
}

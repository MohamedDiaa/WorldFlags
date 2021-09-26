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
        
        let url = AppURL.shared.getCountryListURL()
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
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

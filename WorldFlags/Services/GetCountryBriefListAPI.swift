//
//  GetCountryBriefListAPI.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

class GetCountryBriefListAPI {
    
    func getCountryBriefListAPI() {
        
        guard let url = URL(string: "https://restcountries.eu/rest/v2/all")
            else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data
                else { return }
            
            let decoder = JSONDecoder()

            do {
                let countryList = try decoder.decode([CountryBrief].self, from: data)
                print(countryList)
            } catch {
                print("error")
            }
        }
        
        task.resume()
    }
}

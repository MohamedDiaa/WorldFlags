//
//  AppURL.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

struct AppURL {
    
    static var shared = AppURL()
    
    func getCountryListURL() -> URL {
        return URL(string: "https://restcountries.eu/rest/v2/all")!
    }
    
    func getCountryDetails(name: String?) -> URL? {
        
        guard let stringURL = "https://restcountries.eu/rest/v2/name/\(String(describing: name))"
            .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
            else { return nil }
        
        return URL(string: stringURL)
    }
}

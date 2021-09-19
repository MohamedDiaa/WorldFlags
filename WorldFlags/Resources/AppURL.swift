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
        
        guard let name = name,
            let percentEncodedName = name.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
            else { return nil }
        
        let url =  URL(string: "https://restcountries.eu/rest/v2/name/\(percentEncodedName)")
        print(url?.absoluteString)
        return url
    }
}

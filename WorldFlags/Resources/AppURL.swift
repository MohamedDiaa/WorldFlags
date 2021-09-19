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
    
    let getCountryListURL: URL = URL(string: "https://restcountries.eu/rest/v2/all")!
}

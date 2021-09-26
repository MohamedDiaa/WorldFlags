//
//  Country.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

///
///

import SwiftUI

struct Country: Codable {

    let name: String?
    let topLevelDomain: [String]?
    let alpha2Code, alpha3Code: String?
    let callingCodes: [String]?
    let capital: String?
    let altSpellings: [String]?
    let region: String?

    var flagImage: Image? {
        guard let flagName = alpha2Code?.lowercased()
            else { return nil }
        return Image(flagName)
    }
}

// MARK: - Currency
struct Currency: Codable {
    let code, name, symbol: String?
}

// MARK: - Language
struct Language: Codable {
    let iso6391, iso6392, name, nativeName: String?

    enum CodingKeys: String, CodingKey {
        case iso6391
        case iso6392
        case name, nativeName
    }

}

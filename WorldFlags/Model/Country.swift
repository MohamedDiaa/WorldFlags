//
//  Country.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//


///[{"name":"Aruba"
///,"topLevelDomain":[".aw"],
///"alpha2Code":"AW","alpha3Code":"ABW","callingCodes":["297"],"capital":"Oranjestad","altSpellings":["AW"],"region":"Americas","subregion":"Caribbean","population":107394,"latlng":[12.5,-69.96666666],"demonym":"Aruban","area":180.0,"gini":null,"timezones":["UTC-04:00"],"borders":[],"nativeName":"Aruba","numericCode":"533","currencies":[{"code":"AWG","name":"Aruban florin","symbol":"ƒ"}],"languages":[{"iso639_1":"nl","iso639_2":"nld","name":"Dutch","nativeName":"Nederlands"},{"iso639_1":"pa","iso639_2":"pan","name":"(Eastern) Punjabi","nativeName":"ਪੰਜਾਬੀ"}],"translations":{"de":"Aruba","es":"Aruba","fr":"Aruba","ja":"アルバ","it":"Aruba","br":"Aruba","pt":"Aruba","nl":"Aruba","hr":"Aruba","fa":"آروبا"},"flag":"https://restcountries.eu/data/abw.svg","regionalBlocs":[],"cioc":"ARU"}]
///

import Foundation

struct Country: Codable {
    let name: String?
    let topLevelDomain: [String]?
    let alpha2Code, alpha3Code: String?
    let callingCodes: [String]?
    let capital: String?
    let altSpellings: [String]?
    let region, subregion: String?
    let population: Int?
    let latlng: [Int]?
    let demonym: String?
    let area: Int?
    let timezones, borders: [String]?
    let nativeName, numericCode: String?
    let currencies: [Currency]?
    let languages: [Language]?
    let flag: String?
    //    let regionalBlocs: [RegionalBloc]?
    let cioc: String?
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



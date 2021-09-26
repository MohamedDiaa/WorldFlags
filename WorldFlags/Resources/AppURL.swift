//
//  AppURL.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

enum WFHttpMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

struct WFURLComponentsModel {
    let scheme: String
    let host: String
    let path: String
    let httpMethod: WFHttpMethod
}

struct AppURL {

    static var shared = AppURL()

    func getCountryDetailsURLComponents(name: String) -> WFURLComponentsModel {

    //    let percentEncodedName = name.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        let path = "/v2/name/" + name

        //https://api.countrylayer.com/v2/name
        return WFURLComponentsModel(scheme: "http",
                                    host: "api.countrylayer.com",
                                    path: path,
                                    httpMethod: .get)
    }
    func getCountryListURLComponents() -> WFURLComponentsModel {

        //https://api.countrylayer.com/v2/all
        return WFURLComponentsModel(scheme: "http",
                                    host: "api.countrylayer.com",
                                    path: "/v2/all",
                                    httpMethod: .get)
    }
}

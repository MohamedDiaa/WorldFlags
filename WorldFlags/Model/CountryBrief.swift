//
//  CountryBrief.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

class CountryBrief: Codable, Identifiable, CustomStringConvertible {

    let name: String?

    var description: String {
        return name ?? "name is unavailable"
    }

    init(name: String?) {
        self.name = name
    }
}

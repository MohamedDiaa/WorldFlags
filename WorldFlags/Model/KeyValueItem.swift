//
//  KeyValueItem.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

struct KeyValueItem: Identifiable {
    let id = UUID()
    let key: String?
    let value: String?
}

//
//  CountryList.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import SwiftUI

struct CountryList: View {
    
    var random = Array(repeating: RandomItem(), count: 10)
    
    var body: some View {
        
        List(random) {_ in
            Text("Hello, World!")
        }
    }
}

struct CountryList_Previews: PreviewProvider {
    static var previews: some View {
        CountryList()
    }
}

struct RandomItem: Identifiable {
    let id = UUID()
}



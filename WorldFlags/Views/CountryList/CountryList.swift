//
//  CountryList.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import SwiftUI

struct CountryList: View {
    
    @State var list = [CountryBrief]()
    
    var body: some View {
        
        NavigationView {
            List(list) {country in
                
                NavigationLink(destination: CountryDetail(countryBrief: country)) {
                    Text(country.name ?? "")
                }
            }
        }
        .onAppear() {
            
            GetCountryBriefListAPI().get { (list, error) in
                self.list = list ?? [CountryBrief]()
            }
        }
    }
}

struct CountryList_Previews: PreviewProvider {
    static var previews: some View {
        CountryList()
    }
}


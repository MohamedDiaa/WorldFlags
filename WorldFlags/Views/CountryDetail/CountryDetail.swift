//
//  CountryDetail.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import SwiftUI

struct CountryDetail: View {
    
    var countryBrief: CountryBrief
    @State var country: Country?
    
    var body: some View {
        
        List{
            
            KeyValueRow(item: KeyValueItem(key: "key", value: "value"))
        }
        .onAppear() {
            
            guard let name = self.countryBrief.name
                else{ return }
            
            GetCountryDetails().get(
            name: name) { (country, error) in
                self.country = country
            }
        }
    }
}

struct CountryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetail(countryBrief: CountryBrief(name: "Aruba"))
    }
}

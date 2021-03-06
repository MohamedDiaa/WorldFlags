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
    var getCountryDetails: GetCountryDetailsServiceProtocol = GetCountryDetailsAPI()
    @State var country: Country?

    var keyValueList: [KeyValueItem] {
        guard let country = country
            else { return  [KeyValueItem]() }
        return Mirror(reflecting: country).children.compactMap {
            guard let value = $0.value as? String
                else { return KeyValueItem(key: $0.label, value: "\( $0.value)")  }
            return KeyValueItem(key: $0.label, value: value) }
    }

    var body: some View {

        VStack {
            if self.country?.flagImage != nil {
               self.country?.flagImage
            }
            List(keyValueList) { item in
                KeyValueRow(item: item)
            }
        }
        .navigationBarTitle("\(countryBrief.name ?? "") Details")
        .onAppear {

            guard let name = self.countryBrief.name
                else { return }

            self.getCountryDetails.get(
            name: name) { (country, _) in
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

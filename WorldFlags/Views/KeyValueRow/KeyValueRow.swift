//
//  KeyValueRow.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-19.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import SwiftUI

struct KeyValueRow: View {

    var item: KeyValueItem

    var body: some View {

        HStack {

            Text(item.key ?? "missing")
            Spacer()
            Text(item.value ?? "Unknown")
        }
        .padding()
    }
}

struct KeyValueRow_Previews: PreviewProvider {
    static var previews: some View {
        KeyValueRow(item: KeyValueItem(key: "Key", value: "Value"))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

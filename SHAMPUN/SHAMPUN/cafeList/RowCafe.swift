//
//  RowCafe.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct RestoRow: View {
    var restosData: AllRestoData
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: restosData.img))
                .frame(width: 50, height: 50)
                .cornerRadius(5)
                .padding(5)
            VStack(alignment: .leading) {
                Text(restosData.nama_resto)
                    .bold()
                    .font(.subheadline)
            }
            
            Spacer()
            
            if (restosData.favorite == "true") {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.brown)
                    .imageScale(.medium)
            } else {
                Image(systemName: "hand.thumbsdown.fill")
                    .foregroundColor(.brown)
                    .imageScale(.medium)
            }
        }
    
        .padding(.vertical, 5)
    }
        
}


struct RestoRow_Previews: PreviewProvider {
    static var restos = ModelData().allResto
    
    static var previews: some View {
        RestoRow(restosData: restos[0])
    }
}


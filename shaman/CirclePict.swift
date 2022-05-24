//
//  CirclePict.swift
//  shaman
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("cafe")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

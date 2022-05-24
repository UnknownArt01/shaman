//
//  ContentView.swift
//  shaman
//
//  Created by MacBook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("After WOrk")
                    .font(.title)

                HStack {
                    Text("Jl. Niaga Gapura No.FG-19, Lidah Kulon, Kec. Lakarsantri, Kota SBY, Jawa Timur 60213"
                    )
                        .font(.subheadline)
                    Spacer()
                    Text("Gwalk")
                        .font(.subheadline)
                }

                Divider()

                Text("About After Work")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Profile.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//
import SwiftUI

struct ProfileDetail: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .font(.system(size: 150))
                .padding(.bottom)
            Text("Hi, \(modelData.userData.user)!")
        }
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
            .environmentObject(ModelData())
    }
}

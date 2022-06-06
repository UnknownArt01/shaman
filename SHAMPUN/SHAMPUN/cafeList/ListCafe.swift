//
//  ListCafe.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct RestoList: View {
    init(){
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    
    @EnvironmentObject var modelData: ModelData
    @State private var selectResto: AllRestoData?
    
    var body: some View {
        NavigationView {
            List(selection: $selectResto) {
                ForEach(modelData.allResto) { data in
                    NavigationLink {
                        RestoDetail()
                            .onAppear{
                                modelData.readResto(id: data.id)
                            }
                    } label: {
                        RestoRow(restosData: data)
                    }
                    .tag(data)
                    
                }
            }
            .navigationTitle("Hello, \(modelData.userData.user)")
            .font(.subheadline)
            .frame(minWidth: 300)
            .toolbar {
                ToolbarItem {
                    HStack {
                        Text("")
                        NavigationLink(destination: AddResto()){
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
        
    }
}

struct RestoList_Previews: PreviewProvider {
    static var previews: some View {
        RestoList()
            .environmentObject(ModelData())
    }
}

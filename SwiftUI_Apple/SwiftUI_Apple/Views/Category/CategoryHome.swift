//
//  CategoryHome.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/06.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView{
            List{
                PageView(pages: modelData.features.map{
                    FeatureCard(landmark: $0)
                })
                .aspectRatio(3 / 2, contentMode: .fit)
                .listRowInsets(EdgeInsets())
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    CategoryRow(categoryName: key, items: modelData.landmarks)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationBarTitle("Featured", displayMode: .inline)
            .toolbar {
                Button(action: { showingProfile.toggle() }) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
            
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}

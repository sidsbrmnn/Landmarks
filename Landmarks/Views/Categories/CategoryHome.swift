//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Siddharth Subramanian on 2/9/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a landmark.")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}

//
//  PageView.swift
//  Landmarks
//
//  Created by Siddharth Subramanian on 2/9/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    @State private var currentPage = 0
    
    var pages: [Page]
    
    var body: some View {
        VStack {
            PageViewController(currentPage: $currentPage, pages: pages)
                .aspectRatio(3 / 2, contentMode: .fit)
            Text("Current Page: \(currentPage)")
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}

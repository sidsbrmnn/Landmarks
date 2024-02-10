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
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
                .aspectRatio(3 / 2, contentMode: .fit)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}

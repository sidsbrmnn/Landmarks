//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Siddharth Subramanian on 2/8/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}

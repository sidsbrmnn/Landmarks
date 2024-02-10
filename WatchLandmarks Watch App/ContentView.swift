//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Siddharth Subramanian on 2/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

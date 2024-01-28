//
//  GalleryView.swift
//  Landmarks
//
//  Created by Danika Peet on 2024-01-27.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: Stored properties
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
        
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {
            
            LazyVGrid(columns: twoColumns) {
                
                ForEach(allLandmarks) { currentLandmark in
                    
                    NavigationLink {
                        DetailView(item: currentLandmark)
                    } label: {
                        GalleryItemView(item: currentLandmark)
                    }
                    .tint(.primary)
                    
                }
                .navigationTitle("Landmarks")
                
            }
        }
    }
}

#Preview {
    GalleryView()
}

//
//  GalleryView.swift
//  Landmarks
//
//  Created by Danika Peet on 2024-01-27.
//

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            
            LazyVGrid {
                
                ForEach(allLandmarks) { currentLandmark in
                    
                    NavigationLink {
                        DetailView(item: currentLandmark)
                    } label: {
                        GalleryItemView(item: currentLandmark)
                    }
                    
                }
                .navigationTitle("Landmarks")
                
            }
        }
    }
}

#Preview {
    GalleryView()
}

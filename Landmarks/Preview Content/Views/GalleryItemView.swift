//
//  GalleryItemView.swift
//  Landmarks
//
//  Created by Danika Peet on 2024-01-27.
//

import SwiftUI

struct GalleryItemView: View {
    
    let item: Landmark
    
    var body: some View {
        
        VStack(spacing: 0) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(height: 125)
                .clipShape(
                    Circle()
                )
                .padding(.bottom, 10)

            Text(item.name)
                .font(.headline)
                .multilineTextAlignment(.center)

         Spacer()
            
            Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
                .padding(5)
            
        }
        .padding()
        
    }
}

#Preview {
    HStack {
        GalleryItemView(item: wonderland)
            .frame(idealHeight: 200, maxHeight: 250)
        GalleryItemView(item: sudburyNickel)
            .frame(idealHeight: 200, maxHeight: 250)

    }
}

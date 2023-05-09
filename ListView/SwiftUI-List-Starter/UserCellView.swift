//
//  UserCellView.swift
//  SwiftUI-List-Starter
//
//  Created by Jasman Arora on 5/7/23.
//

import SwiftUI

struct UserCellView: View {
    @Binding var user: User
    var body: some View {
        HStack {
            
            
            AsyncImage(url: user.picture.large ) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4)
                    .padding(.vertical, 4)
                
            } placeholder: {
                Image("user-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }
            
            
            
            
          
            
            VStack(alignment: .leading, spacing: 5) {
                Text(user.name.title + " " + user.name.first )
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }}
    }
}

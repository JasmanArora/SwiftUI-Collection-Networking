//
//  UserCell.swift
//  LazyVGridExample
//
//  Created by Jasman Arora on 5/7/23.
//

import SwiftUI

struct UserCell: View {
    @Binding var user: User
    var body: some View {
        VStack {
            AsyncImage(url: user.picture.large ) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(25)
                    .padding(.vertical, 4)
                
            } placeholder: {
                Image("user-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }
            
            Text(user.name.first)
                .font(.headline)
                .foregroundColor(.gray)
        }
    }
}
/*
struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}

*/

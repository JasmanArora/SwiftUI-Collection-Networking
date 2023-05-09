//
//  UserDetailView.swift
//  LazyVGridExample
//
//  Created by Jasman Arora on 5/7/23.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
   // @Binding  var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: user.picture.large ) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .cornerRadius(25)
                    .padding(.vertical, 4)
                
            } placeholder: {
                Image("user-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .cornerRadius(8)
            }
            Text(user.name.first + " " + user.name.last)
                .padding(.bottom, 5)
            Text(user.email)
                .padding(.bottom, 5)
            Text(user.phone)
                .padding(.bottom, 5)
        }
//            .frame(width: 300, height: 525)
//            .background(Color(.systemBackground))
//            .cornerRadius(12)
//            .shadow(radius: 40)

    }
}

/*

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
*/

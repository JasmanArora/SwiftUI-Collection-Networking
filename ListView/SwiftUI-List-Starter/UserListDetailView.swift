//
//  VideoListDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Jasman Arora on 5/2/23.
//

import SwiftUI

struct UserListDetailView: View {
    var user: User?
    var body: some View {
       
            VStack {
                AsyncImage(url: user!.picture.large ) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                        .padding(.vertical, 4)
                    
                } placeholder: {
                    Image("user-placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                }
                
                Text(user!.name.title + " " + user!.name.first + " " + user!.name.last )
                  
                Text(user?.email ?? "")
                    .padding(20)
                Text(user?.phone ?? "")
               
            }.offset(y: -100)
        }
       
    
}
/*

struct VideoListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserListDetailView()
    }
}

*/

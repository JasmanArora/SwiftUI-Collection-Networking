//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct UserListView: View {
    @StateObject var viewModel = UserListViewModel()
    var videos: [Video] = VideoList.topTen
    var body: some View {
       
        ZStack {
            NavigationView {
                List($viewModel.users) { user in
                  
                    
                    NavigationLink {
                        UserListDetailView(user: user.wrappedValue)
                                    } label: {
                                        UserCellView(user: user)
                                    }
                                }
                                .navigationTitle("👨🏻‍🎤 Users")
                                .listStyle(.plain)
                              
                       
                }
               
               // .disabled(viewModel.isShowingDetail)
            }.task {
                viewModel.getUsers()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}

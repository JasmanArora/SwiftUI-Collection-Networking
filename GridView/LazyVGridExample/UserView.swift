//
//  ContentView.swift
//  LazyVGridExample
//
//  Created by Jasman Arora on 5/2/23.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]


struct UserView: View {
    @StateObject var viewModel = UserListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach($viewModel.users) { user in
                            
                            UserCell(user: user)
                                .onTapGesture {
                                    viewModel.isShowingDetail = true
                                    viewModel.selectedUser = user.wrappedValue
                                }
                            /*
                                Circle()
                                    .foregroundColor(.red).opacity(0.5)
                                    .padding()
                                
                            */
                            
                        }
                    }.navigationTitle("👨🏻‍🎤 Users")
                }//.blur(radius: viewModel.isShowingDetail ? 20: 0)
            }.task {
                viewModel.getUsers()
            }
            
//            if viewModel.isShowingDetail {
//                UserDetailView(user: viewModel.selectedUser!, isShowingDetail: $viewModel.isShowingDetail)
//            }
        }.sheet(isPresented: $viewModel.isShowingDetail) {
            UserDetailView(user: viewModel.selectedUser!)
                .presentationDetents([.medium])
                .presentationCornerRadius(50)
                .presentationDragIndicator(.visible)
           
        }
        
        
      
     
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

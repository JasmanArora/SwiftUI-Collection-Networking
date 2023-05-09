//
//  UserListViewModel.swift
//  SwiftUI-List-Starter
//
//  Created by Jasman Arora on 5/6/23.
//

import SwiftUI

@MainActor final class UserListViewModel: ObservableObject {
    
    @Published var users: [User] = []
    @Published var isShowingDetail = false
    @Published var selectedUser: User?
    
    func getUsers() {
      
        Task {
            do {
                users = try await NetworkManager.shared.getUsers()
                            } catch {
                if let apError = error as? UserError {
                    switch apError {
                    case.invalidData:
                        print("Invalid Data")
                    case .invalidURL:
                        print("Invalid URL")
                    case .invalidResponse:
                        print("Invalid Response")
                    case .unableToComplete:
                        print("Unable To Complete")
                    }
                } else {
                    print("General Error Occured")
                }
             
              
            }
        }
    
    }
    
    
    /*
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case.invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
         
        }
    }
    */
}

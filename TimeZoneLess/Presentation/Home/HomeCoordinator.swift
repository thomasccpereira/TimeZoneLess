//
//  HomeCoordinator.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 12/09/2023.
//

import Foundation
import SwiftUI

final class HomeCoordinator: ObservableObject, Identifiable {
   
   @Published var homeViewModel: HomeViewModel!
   
   required init() {
      self.homeViewModel = HomeViewModel(coordinator: self)
   }
}

// MARK: - Preview
#if DEBUG && !TESTING
extension HomeCoordinator {
   static var preview: Self {
      .init()
   }
}
#endif

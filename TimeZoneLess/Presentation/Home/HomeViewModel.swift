//
//  HomeViewModel.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 12/09/2023.
//

import Foundation
import SwiftUI

final class HomeViewModel: ObservableObject, Identifiable {
   
   private unowned let coordinator: HomeCoordinator
   
   required init(coordinator: HomeCoordinator) {
      self.coordinator = coordinator
   }
}

// MARK: - Layout
extension HomeViewModel {
   
   var navigationTitle: String {
      "home_navigation_title".localized()
   }
   
   var currentPlaceSectionTitle: String {
      "home_current_place".localized()
   }
   
   var moreTimeZonesSectionTitle: String {
      "home_more_time_zones".localized()
   }
}

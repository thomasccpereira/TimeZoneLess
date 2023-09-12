//
//  HomeCoordinatorView.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 12/09/2023.
//

import SwiftUI

struct HomeCoordinatorView: View {
   
   @ObservedObject var coordinator: HomeCoordinator
   
   var body: some View {
      NavigationStack {
         HomeView(viewModel: coordinator.homeViewModel)
      }
   }
}

// MARK: - Preview
#if DEBUG && !TESTING
struct HomeCoordinatorView_Previews: PreviewProvider {
   static var previews: some View {
      HomeCoordinatorView(coordinator: HomeCoordinator.preview)
   }
}
#endif

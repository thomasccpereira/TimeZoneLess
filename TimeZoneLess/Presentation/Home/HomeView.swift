//
//  HomeView.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 12/09/2023.
//

import SwiftUI

struct HomeView: View {
   
   @ObservedObject private(set) var viewModel: HomeViewModel
   
   init(viewModel: HomeViewModel) {
      self.viewModel = viewModel
   }
   
   var body: some View {
      Text("Hi")
         .navigationTitle(viewModel.navigationTitle)
   }
}

// MARK: - Preview
#if DEBUG && !TESTING
struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
      HomeView(viewModel: HomeCoordinator.preview.homeViewModel)
   }
}
#endif

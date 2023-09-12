//
//  TimeZoneLessApp.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 07/09/2023.
//

import SwiftUI

@main
struct TimeZoneLessApp: App {
   
   @StateObject var coordinator = HomeCoordinator()
   
   var body: some Scene {
      WindowGroup {
         HomeCoordinatorView(coordinator: coordinator)
            .onAppear {
               print(NSLocale.allLocales)
            }
      }
   }
}

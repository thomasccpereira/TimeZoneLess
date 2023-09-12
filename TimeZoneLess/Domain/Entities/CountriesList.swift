//
//  CountriesList.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 12/09/2023.
//

import Foundation

// MARK: - Country list
struct CountriesList: Equatable, Hashable {
   
   static let defaultList = CountriesList(countries: [])
   
   // MARK: - Country model
   struct Country: Equatable, Hashable, Identifiable {
      private let isoID: String
      var id: String { isoID }
      let flag: String
      let name: String
      
      init(isoID: String, flag: String, name: String) {
         self.isoID = isoID
         self.flag = flag
         self.name = name
      }
   }
   
   let countries: [Country]
}

// MARK: - Preview
#if DEBUG
extension CountriesList {
   static var preview: Self {
      .init(countries: [
         
      ])
   }
}
#endif


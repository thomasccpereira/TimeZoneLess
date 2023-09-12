//
//  NSLocale+Extension.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 07/09/2023.
//

import Foundation

extension NSLocale {
   
   static var allLocales: CountriesList {
      let countries = isoCountryCodes.compactMap({ isoCountryCode -> CountriesList.Country? in
         let isoCountryID = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: isoCountryCode])
         guard let countryFlag = String.flag(for: isoCountryCode),
               let countryName = NSLocale(localeIdentifier: NSLocale.current.identifier).displayName(forKey: NSLocale.Key.identifier, value: isoCountryID) else { return nil }
         
         return CountriesList.Country(isoID: isoCountryID, flag: countryFlag, name: countryName)
      })
      
      return CountriesList(countries: countries)
   }
}

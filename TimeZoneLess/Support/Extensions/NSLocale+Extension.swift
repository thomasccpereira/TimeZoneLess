//
//  NSLocale+Extension.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 07/09/2023.
//

import Foundation

extension NSLocale {
   
   typealias LocaleCountry = (flag: String, name: String)
   static var allLocales: [LocaleCountry] {
      isoCountryCodes.compactMap({ isoCountryCode in
         let isoCountryID = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: isoCountryCode])
         guard let countryFlag = String.flag(for: isoCountryCode),
               let countryName = NSLocale(localeIdentifier: NSLocale.current.identifier).displayName(forKey: NSLocale.Key.identifier, value: isoCountryID) else { return nil }
         
         return LocaleCountry(flag: countryFlag, name: countryName)
      })
   }
}

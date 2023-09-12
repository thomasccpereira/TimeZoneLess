//
//  String+Extension.swift
//  TimeZoneLess
//
//  Created by Thomás Pereira on 07/09/2023.
//

import Foundation

extension String {
   
   static func flag(for countryCode: String) -> String? {
      func isLowercaseASCIIScalar(_ scalar: Unicode.Scalar) -> Bool {
         return scalar.value >= 0x61 && scalar.value <= 0x7A
      }
      
      func regionalIndicatorSymbol(for scalar: Unicode.Scalar) -> Unicode.Scalar {
         precondition(isLowercaseASCIIScalar(scalar))
         return Unicode.Scalar(scalar.value + (0x1F1E6 - 0x61))!
      }
      
      let lowercasedCode = countryCode.lowercased()
      guard lowercasedCode.count == 2 else { return nil }
      guard lowercasedCode.unicodeScalars.reduce(true, { accum, scalar in accum && isLowercaseASCIIScalar(scalar) }) else { return nil }
      
      let indicatorSymbols = lowercasedCode.unicodeScalars.map({ regionalIndicatorSymbol(for: $0) })
      return String(indicatorSymbols.map({ Character($0) }))
   }
   
   func localized(withComment comment: String? = nil) -> String {
      return NSLocalizedString(self, comment: comment ?? "")
   }
}

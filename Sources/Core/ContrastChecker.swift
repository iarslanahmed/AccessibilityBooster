//
//  ContrastChecker.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit

public struct ContrastChecker {
    public static func contrastRatio(between color1: UIColor, and color2: UIColor) -> CGFloat {
        let luminance1 = color1.luminance()
        let luminance2 = color2.luminance()
        let lighter = max(luminance1, luminance2)
        let darker = min(luminance1, luminance2)
        return (lighter + 0.05) / (darker + 0.05)
    }
    
    public static func isContrastSufficient(between color1: UIColor, and color2: UIColor, forTextStyle style: UIFont.TextStyle) -> Bool {
        let ratio = contrastRatio(between: color1, and: color2)
        return ratio >= (style == .largeTitle ? 3 : 4.5) // WCAG standards
    }
}

extension UIColor {
    func luminance() -> CGFloat {
        let components = self.cgColor.components ?? [0, 0, 0, 0]
        let r = components[0] <= 0.03928 ? components[0] / 12.92 : pow((components[0] + 0.055) / 1.055, 2.4)
        let g = components[1] <= 0.03928 ? components[1] / 12.92 : pow((components[1] + 0.055) / 1.055, 2.4)
        let b = components[2] <= 0.03928 ? components[2] / 12.92 : pow((components[2] + 0.055) / 1.055, 2.4)
        return 0.2126 * r + 0.7152 * g + 0.0722 * b
    }
}

//
//  FontScaling.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit
import SwiftUI

public struct FontScaling {
    public static func scaledFont(forTextStyle style: UIFont.TextStyle) -> UIFont {
        let font = UIFont.preferredFont(forTextStyle: style)
        return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
    }
}

@available(iOS 13.0, *)
extension Text {
    public func scaledFont(forTextStyle style: UIFont.TextStyle) -> Text {
        self.font(.custom(FontScaling.scaledFont(forTextStyle: style).fontName, size: FontScaling.scaledFont(forTextStyle: style).pointSize))
    }
}

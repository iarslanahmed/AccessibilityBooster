//
//  AccessibilityLabelGenerator.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit
import SwiftUI

public struct AccessibilityLabelGenerator {
    public static func generateLabel(for element: Any) -> String {
        if let text = element as? String {
            return text
        } else if let image = element as? UIImage, let imageName = image.accessibilityIdentifier {
            return imageName
        } else if let view = element as? UIView, let label = view.accessibilityLabel {
            return label
        }
        return "Unlabeled Element"
    }
}

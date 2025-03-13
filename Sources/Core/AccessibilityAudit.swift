//
//  AccessibilityAudit.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit

public struct AccessibilityAudit {
    public static func audit(view: UIView) -> [String] {
        var issues: [String] = []
        if view.accessibilityLabel == nil {
            issues.append("Missing accessibility label for \(view)")
        }
        if view.accessibilityTraits.isEmpty {
            issues.append("Missing accessibility traits for \(view)")
        }
        return issues
    }
}

Pod::Spec.new do |spec|
  spec.name         = "AccessibilityBooster"
  spec.version      = "1.0.0"
  spec.summary      = "A library to simplify adding accessibility features to iOS apps."
  spec.description  = "Accessibility Booster helps developers meet accessibility standards (e.g., WCAG) effortlessly."
  spec.homepage     = "https://github.com/yourusername/AccessibilityBooster"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Your Name" => "your.email@example.com" }
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/yourusername/AccessibilityBooster.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/AccessibilityBooster/**/*.swift"
  spec.swift_version = "5.5"
end

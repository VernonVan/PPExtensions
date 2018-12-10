#
#  Be sure to run `pod spec lint PPExtensions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "PPExtensions"
  s.version      = "0.0.1"
  s.summary      = "Useful extensions for iOS, written by Swift"
  s.homepage     = "https://github.com/VernonVan/PPExtensions"
  s.license      = "MIT"
  s.platform     = :ios, "9.0"
  s.author       = { "Vernon" => "https://www.jianshu.com/u/0da7f56c0a41" }
  s.source       = { :git => "https://github.com/VernonVan/PPExtensions.git", :tag => "#{s.version}" }

  s.source_files = "PPExtensions/Source/*.{swift}"
  s.frameworks   = "UIKit"
  s.swift_version = "4.2"

end

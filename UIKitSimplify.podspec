#
# Be sure to run `pod lib lint UIKitSimplify.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIKitSimplify'
  s.version          = '0.1.0'
  s.summary          = 'Declarative UIKit approach with Domain Spesific Language'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  # s.description  = <<-DESC
  s.homepage         = 'https://github.com/anjasdwi/UIKitSimplify'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anjasdwi' => 'anjasdwi.id@gmail.com' }
  s.source           = { :git => 'https://github.com/anjasdwi/UIKitSimplify.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/clorotlegi'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.7'
  s.source_files = 'Classes/**/*'
  s.platforms = {
    "ios": "12.0"
  }
  
  # s.resource_bundles = {
  #   'UIKitSimplify' => ['UIKitSimplify/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

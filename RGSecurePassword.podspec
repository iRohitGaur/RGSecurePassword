#
# Be sure to run `pod lib lint RGSecurePassword.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RGSecurePassword'
  s.version          = '0.1.0'
  s.summary          = 'Generate secure passwords offline and quick.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/iRohitGaur/RGSecurePassword'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iRohitGaur' => 'rohitgaur7@gmail.com' }
  s.source           = { :git => 'https://github.com/iRohitGaur/RGSecurePassword.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iRohitGaur'

  s.ios.deployment_target = '13.0'

  s.source_files = 'RGSecurePassword/Source/**/*'
  
  # s.resource_bundles = {
  #   'RGSecurePassword' => ['RGSecurePassword/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

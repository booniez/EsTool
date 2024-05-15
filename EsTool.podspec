#
# Be sure to run `pod lib lint EsTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EsTool'
  s.version          = '0.0.2'
  s.summary          = 'some swift extension'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/booniez/EsTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'booniez' => 'booniezbox@gamil.com' }
  s.source           = { :git => 'https://github.com/booniez/EsTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_versions     = ['5.0']
  s.ios.deployment_target = '12.0'

  s.source_files = 'EsTool/Classes/**/*'
  
  s.subspec 'String' do |stringsub|
    stringsub.source_files = 'EsTool/Classes/String/**/*'
  end
  
  s.subspec 'Date' do |datasub|
    datasub.source_files = 'EsTool/Classes/Date/**/*'
  end
  
  # s.subspec 'Color' do |datasub|
  #  datasub.source_files = 'EsTool/Classes/Color/**/*'
  # end

  
  
  # s.resource_bundles = {
  #   'EsTool' => ['EsTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

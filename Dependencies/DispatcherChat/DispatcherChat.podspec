
Pod::Spec.new do |s|
  s.name         = "DispatcherChat"
  s.version      = "1.0.0"
  s.summary      = "Module for DispatcherChat"
  s.homepage     = "https://www.test.com"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Mykola Sheika" => "hawk.ukr@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "git@github.com:NickolaySheika/StaticLibTest.git", :tag => "#{s.version}" }
  s.swift_version = '5.0'
  
  s.static_framework = true

  s.dependency 'FreshchatSDK', '4.1.0' 
  
  s.source_files = "Sources/**/*.{swift}"
  # s.pod_target_xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => '$(PODS_ROOT)/../../DispatcherChat/Sources/DispatcherChat-Bridging-Header.h' }
  
#   s.prepare_command = <<-CMD
#     cat > "module.map" << MAP
# module FreshchatSDK [system] {
#     header "$(PODS_ROOT)/FreshchatSDK/FreshchatSDK.h"
#     export *
# }
# MAP
#   CMD

#   s.preserve_path = 'module.map'



  # s.preserve_path = "${POD_ROOT}/Dependencies/DispatcherChat/DispatcherChat-Bridging-Header.h"
  # s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => '${POD_ROOT}/Dependencies/DispatcherChat/DispatcherChat-Bridging-Header.h' } 

  s.test_spec 'UnitTests' do |test_spec|
    test_spec.source_files = 'Tests/**/*.{swift}'
    test_spec.ios.resources = ['Tests/**/*.{json}']
  end
end

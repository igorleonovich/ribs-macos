Pod::Spec.new do |s|
  s.name = 'RIBs-Swift-SDK'
  s.version = '0.9.3'
  s.license = 'MIT'
  s.summary = 'Uber RIBs iOS/Android Mobile Architecture: Now for macOS'
  s.homepage = 'https://github.com/igorleonovich/ribs-swift-sdk'
  s.authors = { 'Igor Leonovich' => 'mail@focustuner.com' }
  s.social_media_url = 'http://github.com/igorleonovich'
  s.source = { :git => 'https://github.com/igorleonovich/ribs-swift-sdk', :tag => '0.9.3' }

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'

  s.source_files = 'Source/*.swift'

  s.swift_version = '5.0'
end

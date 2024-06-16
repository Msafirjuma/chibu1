#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_selfie_liveness.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_selfie_liveness'
  s.version          = '1.0.0'
    s.summary          = 'Cyclone Nepal Info Tech Pvt. Ltd.'
    s.description      = <<-DESC
  Plugin for selfie liveness by Cyclone Nepal Info Tech Pvt. Ltd.
                         DESC
    s.homepage         = 'https://cninfotech.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Cyclone Nepal Info Tech' => 'info@cninfotech.com' }
    s.source           = { :path => '.' }
    s.source_files = 'Classes/**/*.{h,m,swift,xcdatamodeld}'
    s.resource = 'Classes/*.storyboard'
    s.resource_bundles = {
      'Assets' => [
          'Assets/*.png'
  ]

    }
    s.dependency 'Flutter'
    s.platform = :ios, '12.0'
    s.ios.dependency 'GoogleMLKit/FaceDetection'
    s.ios.dependency 'GoogleMLKit/TextRecognition'
    s.static_framework = true

    # Flutter.framework does not contain a i386 slice.
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.swift_version = '5.0'
  end

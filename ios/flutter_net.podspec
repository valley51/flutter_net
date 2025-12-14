#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint audio_waveforms.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_net'
  s.version          = '2.0.3'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '15.0'

  # Allow Apple Silicon simulator by only excluding the legacy i386 slice.
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'DEFINES_MODULE' => 'YES'
  }
  s.swift_version = '5.0'
end

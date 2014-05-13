Pod::Spec.new do |s|
  s.name         = 'CodigoDelSurSDK'
  s.version      = '1.0.0'
  s.platform = :ios
  s.summary      = 'Utilities framework we use at CodigoDelSur for all our iOS projects'
  s.author = {
    'Nicolas Jakubowski' => 'njakubowski@codigodelsur.com'
  }
  s.license = 'LICENSE.txt'
  s.requires_arc = true
  s.source = {
    :git => 'https://github.com/codigodelsur/CodigoDelSurSDK-for-iOS.git',
    :tag => '1.0.0'
  }
  s.source_files = 'CodigoDelSurSDK/*.{h,m}'
  s.homepage = 'https://github.com/codigodelsur/CodigoDelSurSDK-for-iOS'
end

Pod::Spec.new do |s|
  s.name         = "cocos2d-iphone"
  s.version      = "1.0.0"
  s.summary      = "This is the source version of cocos2d."
  s.description  = "This is the source version of cocos2d. Use when you don't want to pull in all the source. Built from revision d867979c11ef4e1cc464fc0c7f205a86b6a0df30 at git@github.com:smule/cocos2d-iphone.git"
  s.homepage     = "http://github.com/smule/cocos2d-iphone"

  s.license      = {
    :type => 'internal',
    :text => "Copyright (C) 2013, Smule, Inc."
  }

  s.author       = { "Smule IOS Team" => "team-ios@smule.com" }
  s.source         = { :git => "git@github.com:smule/cocos2d-iphone.git", :tag => "smule-cocos2d-iphone-1.0.0" }

  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.preferred_dependency = 'cocos2d'
  s.requires_arc = false

  s.subspec 'kazmath' do |kazmath|
    kazmath.source_files = 'external/kazmath/**/*.{h,c}'
    kazmath.header_mappings_dir = 'external/kazmath/include'
  end

  s.subspec 'cocos2d' do |cocos2d|
    cocos2d.dependency 'cocos2d-iphone/kazmath'
    cocos2d.source_files = 'cocos2d/**/*.{h,m,c}'
    cocos2d.resources = 'Resources/Fonts/*.png'
    cocos2d.header_mappings_dir = 'cocos2d' 
  end

end

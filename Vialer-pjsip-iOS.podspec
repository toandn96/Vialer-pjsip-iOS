Pod::Spec.new do |s|
	s.name                  = "Vialer-pjsip-iOS"
	s.version               = "3.6"
	s.summary               = "PJSIP 2.13.1 for iOS"
	s.description           = "Pod for distributing PJSIP 2.13.1 wrapped in a framework. With Opus, OpenSSL and openh264."
	s.homepage              = "https://github.com/toandn96/Vialer-pjsip-iOS"

	s.license               = { :type => "GNU GPLv3", :file => "LICENSE" }
	s.author                = { "Devhouse Spindle" => "opensource@wearespindle.com" }

	s.source                = { :git => "https://github.com/toandn96/Vialer-pjsip-iOS.git", :tag => s.version.to_s }
	s.social_media_url      = "https://github.com/toandn96"

	s.platform              = :ios, "11.0"
	s.requires_arc          = false

	s.preserve_paths        = "VialerPJSIP.framework/*"
	s.public_header_files   = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.source_files		    = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.vendored_frameworks   = "VialerPJSIP.framework"

	s.libraries 			= 'stdc++'
	s.frameworks            = "AudioToolbox", "AVFoundation", "CFNetwork",  "CoreMedia"
	s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
	}
end


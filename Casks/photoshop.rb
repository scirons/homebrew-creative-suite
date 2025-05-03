cask 'photoshop' do
  version '26.3'
  sha256 'b1f70ef6e32777afe2ede3661c5a2bbb7d11be59f6c1aa5d3f01806a6f40def4'

  url 'https://download2265.mediafire.com/qfzsa1fbi98gJFxnxV3NXt6e_Zpm6sf6YeZosg7-5kYE_gHy9Tr_VueoJLcGDoAecX6Gw3EoesYkfqO_CLk_JiBGigoMkUdFK4hRuRypoF7vuyFBkGVs7Y4peIeRP4_wEMct6lwsnCxWVCanwb5xhOvvHS9J2_ZP4ZtADAYxd8XsFA/5z4iaamyat83of1/Photoshop+26.3+%5BMonter+Group%5D.dmg'
  name 'Adobe Photoshop'
  homepage 'https://www.adobe.com'

  pkg 'Ps v26.3 [Monter Group].pkg', allow_untrusted: true

 uninstall pkgutil: [
              'com.adobe.photoshop',
            ],
            delete: [
              '/Applications/Adobe Photoshop 2025',
              '~/Library/Application Support/Adobe/Photoshop',
              '~/Library/Preferences/com.adobe.photoshop.plist',
              '~/Library/Caches/com.adobe.photoshop',
            ]
end

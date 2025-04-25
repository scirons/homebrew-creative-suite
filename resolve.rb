cask 'resolve' do
  version '19.1.3'
  sha256 'fc1ff63a9c0f03b2e9246df1346db3d2f26a22c3c98b75e96e3d6964a6bbe138'

  url 'https://download2351.mediafire.com/1x5vt4ctjjegFT2YnCndzzRJM49g3wdGl8FsP26UgSZbRKhSfchgIBpEWgChbGEs1OpK6c_XVE1W63y09_qB58PkUevXMvpJ_HvqA3YSatZ1_Atz-d3cZmVundmV9-oidpLcSgnRHbiuKOm2LLtVWEDTUyzQd0l9HJvGfVlEp8JmEA/i67odtoqlfa6jxv/DRS+19.1.3+%5BMonter+Group%5D.dmg'
  name 'Davinci Resolve'
  homepage 'https://www.blackmagicdesign.com'

  pkg 'DRS 19.1.3 [Monter Group].pkg', allow_untrusted: true

  uninstall pkgutil: [
    'com.blackmagic-design.DaVinciResolve',
    'com.blackmagic-design.ProxyGenerator',
    'com.blackmagic-design.BlackmagicRAW',
  ],
            delete: [
              '/Applications/DaVinci Resolve',
              '/Applications/DaVinci Resolve Studio',
              '/Applications/Blackmagic Proxy Generator',
              '/Applications/Blackmagic RAW',
              '~/Library/Application Support/Blackmagic Design',
              '~/Library/Preferences/com.blackmagicdesign.DaVinciResolve.plist',
              '~/Library/Preferences/com.blackmagicdesign.ProxyGenerator.plist',
              '~/Library/Preferences/com.blackmagicdesign.BlackmagicRAW.plist',
              '~/Library/Caches/com.blackmagicdesign.DaVinciResolve',
              '~/Library/Caches/com.blackmagicdesign.ProxyGenerator',
              '~/Library/Caches/com.blackmagicdesign.BlackmagicRAW',
            ]

  zap trash: [
      '~/Library/Application Support/Blackmagic Design',
      '~/Library/Preferences/com.blackmagicdesign.DaVinciResolve.plist',
      '~/Library/Preferences/com.blackmagicdesign.ProxyGenerator.plist',
      '~/Library/Preferences/com.blackmagicdesign.BlackmagicRAW.plist',
      '~/Library/Caches/com.blackmagicdesign.DaVinciResolve',
      '~/Library/Caches/com.blackmagicdesign.ProxyGenerator',
      '~/Library/Caches/com.blackmagicdesign.BlackmagicRAW',
      '~/Library/Logs/Blackmagic Design',
      '~/Library/Saved Application State/com.blackmagicdesign.DaVinciResolve.savedState',
      '~/Library/Saved Application State/com.blackmagicdesign.ProxyGenerator.savedState',
      '~/Library/Saved Application State/com.blackmagicdesign.BlackmagicRAW.savedState',
    ]
end

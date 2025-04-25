cask 'illustrator' do
  version '29.3'
  sha256 'c44c227614775a78da6cf4d4cdf2092c8a387d5203f71ae82a78e73a2b435834'

  url 'https://download2294.mediafire.com/pc5615r8uikgHUHyf5IDfRtggypGAXQOPJGmZMTEF3I3RaKcbfpV49K9awSL8TZrT83UTPWyEDq1m7uDjxmXWmB-lJo1ovVxBVsWxoPyEj2lqs6u8ig_Y6UdvNN_Bv3dZawGqKhADNdOdQ-0TrLJTA4tur3Sg8tCL-qx0YQNQEtdHw/e30xskgilfxtl2a/Illustrator+29.3+%5BMonter+Group%5D.dmg'
  name 'Adobe Illustrator'
  homepage 'https://www.adobe.com'

  pkg 'Ai 29.3 [Monter Group].pkg', allow_untrusted: true

uninstall pkgutil: [
    'com.adobe.illustrator',
  ],
            delete: [
              '/Applications/Adobe Illustrator 2025',
              '~/Library/Application Support/Adobe/Illustrator',
              '~/Library/Preferences/com.adobe.illustrator.plist',
              '~/Library/Caches/com.adobe.illustrator',
            ]
end

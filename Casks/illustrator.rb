cask 'illustrator' do
  version '29.3'
  sha256 'c44c227614775a78da6cf4d4cdf2092c8a387d5203f71ae82a78e73a2b435834'

  url 'https://download2294.mediafire.com/pup89aryl8xgirU5nbr8RkmfDJfbNl2y6pEvnIPRA0-RBRg4ycK4jZ1aWPf5XyJZaZyzFKxtHU5uWRVDzP6RCDuZ5BLslEFliHI0FWAtv7e5aLiUHqUouBghMKdyUUN2U_MUYpL7Fa-75t0_vokMGcn0bCFXvGnIhhPOAtZnVU103A/e30xskgilfxtl2a/Illustrator+29.3+%5BMonter+Group%5D.dmg'
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

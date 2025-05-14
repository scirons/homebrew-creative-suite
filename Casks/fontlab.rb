cask 'fontlab' do
  version '8.4.3'
  sha256 '83b26f90daaa07e677a99e3b96e4e45dbaa3763ccf675c381c35cb59f38f5cf8'

  url 'https://download2297.mediafire.com/2fnldmkfyvrgHJlz8m-_74EkUSp4L45yjEGeg7u5cBmUD6W0aNLqIx6zconG10R500vBZjNeFOb6oGifXeSUBgYhctCMKk5pySYFafI52_czo3L6u2EqmeT8yrhH3XwfEzxjTIFBoc148mlrEFnVP_oBnwcUgP3dcWIstlqlxFDe9A/upxlrt8jo507bwd/FontLab_8.4.3.8984.0_%5BTNT%5D.dmg'
  name 'Fontlab'
  homepage 'https://www.fontlab.com'

  app 'Fontlab 8.app'

uninstall delete: [
              '/Applications/FontLab 8.app',
              '~/Library/Application Support/FontLab',
              '~/Library/Preferences/com.fontlab.FontLab.plist',
              '~/Library/Caches/com.fontlab.FontLab',
            ]

  zap trash: [
      '~/Library/Application Support/FontLab',
      '~/Library/Preferences/com.fontlab.FontLab.plist',
      '~/Library/Caches/com.fontlab.FontLab',
      '~/Library/Logs/FontLab',
      '~/Library/Saved Application State/com.fontlab.FontLab.savedState',
    ]
end

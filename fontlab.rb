cask 'fontlab' do
  version '8.4.3'
  sha256 '83b26f90daaa07e677a99e3b96e4e45dbaa3763ccf675c381c35cb59f38f5cf8'

  url 'https://download948.mediafire.com/ucrbo0rvzydgiHvi0K02YqtgE3-UclvsISmaPWLUXarW286xUXoHNF6oB3PMWPEYZiQpRLmcrQTe0GF9dBNhy7-ia5Vdh_SfLR3NQRY5s8JV2gSxIsRhXo7mAzsA-w59DgTh3lX9GZz0zXsP0ogYAAkiL13pP5vokFwaZsHhnMA0_w/upxlrt8jo507bwd/FontLab_8.4.3.8984.0_%5BTNT%5D.dmg'
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

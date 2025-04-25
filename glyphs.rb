cask 'glyphs' do
  version '3.3'
  sha256 '1704dcebe460d7c4c72cbc5aeb56e76e65a743bd98cdbf778d804c79a9895863'

  url 'https://psv4.userapi.com/s/v1/d/ihbveKntZBePkE1AGC6ROU6U5T_lyl3j2TAP-BXyhwE0dw6z2mDxkgFEObv8qtyLLF_A5yEE61aFza09_pcHIkNBUoU_c92Iw-2B3jSd7XwpphpF3lQZjA/Glyphs_3_3_Cracked.dmg'
  name 'Glyphs'
  homepage 'https://www.glyphs.com'

  app 'Glyphs 3.app'

uninstall delete: [
              '/Applications/Glyphs 3.app',
              '~/Library/Application Support/Glyphs',
              '~/Library/Preferences/com.glyphs.Glyphs.plist',
              '~/Library/Caches/com.glyphs.Glyphs',
            ]
end

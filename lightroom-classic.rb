
cask 'lightroom-classic' do
  version '13.1'
  sha256 '8a60077be77d63f07efde91d32ef26a7210c3db727b2579a0b139bb8eb831a0d'

  url 'https://psv4.userapi.com/s/v1/d/G4PnWC_LF8ILrRaPhiFbgjOiKokx3T9CbB6xPZEYRPkDosOutfVgf2Z8AEiir84w2HXMo-QU_dCSoRDy68OjaIXSnc8OF1eD6Acnze4Ycp1CoMvnL12ufQ/Adobe_Lightroom_Classic_v13_1_macOS.dmg'
  name 'Adobe Lightroom Classic'
  homepage 'https://www.adobe.com'

  # First install Package.pkg from inside Setup.dmg
  installer script: {
    executable: "/bin/bash",
    args: [
      "-c",
      "hdiutil attach '#{staged_path}/2. Setup.dmg' -mountpoint '/tmp/lightroom-setup' && " +
      "sudo installer -pkg '/tmp/lightroom-setup/Build/Lightroom Classic v13.1 2024 (Adobe Console UB)/Build/Lightroom Classic(13.1)_Install.pkg' -target / && " +
      "hdiutil detach '/tmp/lightroom-setup' || true"
    ]
  }

  # Then mount Patch.dmg and install Patch.pkg
  installer script: {
    executable: "/bin/bash",
    args: [
      "-c",
      "mkdir -p '/tmp/lightroom-patch' && " +
      "hdiutil attach '#{staged_path}/3. Patch.dmg' -mountpoint '/tmp/lightroom-patch' && " +
      "sudo installer -pkg '/tmp/lightroom-patch/Adobe 2024 Patcher v2.3.pkg' -target / && " +
      "hdiutil detach '/tmp/lightroom-patch' || true"
    ]
  }

 uninstall pkgutil: [
              'com.adobe.lightroom',
            ],
            delete: [
              '/Applications/Adobe Lightroom Classic',
              '~/Library/Application Support/Adobe/Lightroom',
              '~/Library/Preferences/com.adobe.LightroomClassicCC7.plist',
              '~/Library/Caches/com.adobe.LightroomClassicCC7',
            ]
end

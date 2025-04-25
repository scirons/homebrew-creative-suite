cask 'ableton' do
  version '12.1.10'
  sha256 'ef45993a6a0743a84fa696a7a3917aa261c8822a45ac8d98da41f8bbcf2a27f2'

  url 'https://download2392.mediafire.com/j7f3g6w0i4pgZ0rKZKY45BTMSokw2om0xW7IMfKNo4lrWgZglCxtjaqrv5UfMFTB9PCPPc3QWhZpdKXwWJYV12nHWjjLCWTyt2jW-v-ectkylbPtD0rYbO3vpsHpWeLSoajViK6VhiWA9eT2F9M-EthrDeu68UOMBGM4E_BL-76OtQ/u0f1q2avrzve5j3/Ableton+Live+12+Suite+12.1.5+U2B+%5BHCiSO%5D.dmg'
  name 'Ableton'
  homepage 'https://www.ableton.com'

  app 'Ableton Live 12 Suite.app'

uninstall delete: [
  'Applications/Ableton Live 12 Suite.app',
]

  zap trash: [
    '~/Library/Application Support/Ableton',
    '~/Library/Application Support/CrashReporter/Ableton *',
    '~/Library/Application Support/CrashReporter/Live_*.plist',
    '~/Library/Caches/Ableton',
    '~/Library/Preferences/Ableton',
    '~/Library/Preferences/com.ableton.live.plist*',
    '~/Music/Ableton'
  ]
end

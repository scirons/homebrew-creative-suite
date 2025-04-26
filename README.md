# Sciron's Homebrew Creative Suite Tap

This is a custom [Homebrew](https://brew.sh) tap containing `.rb` formulae for installing the essential creative suite of apps on mac.

# Apps

| App                       | Version | Packer         |
| ------------------------- | ------- | -------------- |
| Ableton Live 12           | 12.1.10 | HCiSO          |
| Fontlab 8                 | 8.4.3   | TNT            |
| Glyphs 3                  | 3.3     | appstorrent.ru |
| Photoshop CC 2025         | 26.3    | Monter Group   |
| Illustrator CC 2025       | 29.3    | Monter Group   |
| Lightroom Classic 2025    | TBD     | TBD            |
| Davinci Resolve Studio 19 | 19.1.3  | Monter Group   |

## Installation

First, tap the repository:

```bash
brew tap yourusername/creativetools
```

Update brew and install the desired package:

```bash
brew update && brew install photoshop
```

# Licenses

For applications that requires the license injection, the following steps are required:

1. Navigate to the cached downloaded image

```bash
cd ~/Library/Caches/Homebrew/downloads/
```

2. Find the directory of the application with it's required license.

```bash
~/Library/Caches/Homebrew/downloads/.tmp_b236490fd1fa80210a358fba6c9ca275/Ableton Live 12 Suite 12.1.5 U2B [HCiSO] 16s/Authorize.auz
```

> [!WARNING]
  As of the moment, all links in the formulae **relies on mediafire temporary urls**. For that matter: **access, copy and update the 'url' variable with the most recent one** before deploying or attempting to install a package.

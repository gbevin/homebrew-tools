cask "showmidi" do
  version "0.6.0"
  sha256 "3750dbc2770c21232dadffcb79011aa6c57630ae023a6fad8f31256ac25be2a0"

  url "https://github.com/gbevin/ShowMIDI/releases/download/#{version}/ShowMIDI-macOS-#{version}.zip"
  name "ShowMIDI"
  desc "A multi-platform GUI application to effortlessly visualize MIDI activity"
  homepage "https://github.com/gbevin/ShowMIDI"

  pkg "ShowMIDI-#{version}.pkg"

  uninstall pkgutil: [
    "com.uwyn.ShowMIDI-LV2-1",
    "com.uwyn.ShowMIDI-CLAP-1",
    "com.uwyn.ShowMIDI-VST",
    "com.uwyn.ShowMIDI",
    "com.uwyn.ShowMIDI-VST3",
    "com.uwyn.ShowMIDI-AU",
  ]
end
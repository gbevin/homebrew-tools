cask "showmidi" do
  version "0.5.1"
  sha256 "20699eee1c84a819abf9fbdb5c4d4a60698b7501a508448f293f3c563136347e"

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
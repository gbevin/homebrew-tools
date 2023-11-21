cask "showmidi" do
  version "0.8.0"
  sha256 "01938d257b78c3db9077f3aa73c2268d15eb785f37fcfb46d28acd34c7c76eb2"

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
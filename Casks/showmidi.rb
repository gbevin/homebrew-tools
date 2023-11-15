cask "showmidi" do
  version "0.6.1"
  sha256 "131cfe20c418ba2edf8d493fac35ff757e6e17cec7054f5f7d6b30f9c74c3786"

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